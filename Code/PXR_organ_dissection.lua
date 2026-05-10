MapVar("Px_player_organ_extraction",{})

--[[
{
	'organ':{
		'animal':true
	}
}
]]

local function found_organ_in_animal(animal,organ)
	if not Px_player_organ_extraction then
		Px_player_organ_extraction = {}
	end
	if not Px_player_organ_extraction[organ] then return false end
	if not Px_player_organ_extraction[organ][animal] then return false end
	if Px_player_organ_extraction[organ][animal] then return true end
end

local function get_chains()
	local to_return = {}
	for _,v in ipairs(Presets.UnitClassChain.Default) do
		if v.id then
			to_return[#to_return+1] = v.id
		end
	end
	return to_return
end

DefineClass.UnitDissectStandalone = {
	__parents = { "ListPreset" },
	properties = {
		{ category = "Meta", id = "UnitChain", name = "Unit", editor = "choice", default = false, items = function (self) return get_chains() end,},
		{ category = "Meta", id = "DissectResources",	name = "Dissection resources", editor = "nested_list", default = false, base_class = "ButcherResAmount", template = true, help = "Resources produced on succesful dissection", },
		{ category = "Meta", id = "TierScaling_add",	name = "Per tier res added", editor = "nested_list", default = false, base_class = "ButcherResAmount", template = true, help = "Per tier additive resources", },
		{ category = "Meta", id = "TierScaling_per",	name = "increase per tier (%)", editor = "number", scale = '%', default = 125, min = 100, max = 250, help = "% increase per tier", },
	},
}

DefineModItemPreset("UnitDissectStandalone", { EditorName = "Dissection Resources", EditorSubmenu = "Animals" })


local function TryIssueDissectAction(animal, die_reason)
	local attacker = animal.attacked_by
	if not IsValid(attacker) or attacker.CombatGroup ~= Human.CombatGroup or not animal:CanBeDissected(true) then
		return
	end
	if die_reason == "SlaughterDissect" then
		assert(attacker.player)
		local player = attacker.player
		local preset = WorkActions.Dissect
		if preset and preset:IsValidActionTarget(animal, player) then
			preset:OnAction(animal, player, nil, nil, attacker)
		end
	end
end

function UnitAnimalAutoResolve:OnDie(reason)
	TryIssueDissectAction(self, reason)
end

function UnitCorpse:CanBeButchered()
	return not self.butchered and self:GetVisible() and not self.dissect_on_death
end

function Human:CanBeDissected(flag)
	return false
end

function Human:CanBeDissectSlaughtered()
	return false
end

function UnitAnimal:CanBeDissectSlaughtered()
	if self:IsDead() then
		return
	end
	
	if self:IsUnconscious() then
		return true
	end
	if self:IsTamed() and not self.berserk_state and self:CanBeDissected(true) then
		return true
	end
end

function UnitCorpse:CanBeDissected(ignore_is_dead)
	local chain = Find_evo_chain(self.class)
	local dissect_entry = false
	local to_return = false
	if not chain then
		return to_return
	end
	for _,v in ipairs(Presets.UnitDissectStandalone.Default) do
		if v.id and v.UnitChain == chain.id then
			dissect_entry = true
		end
	end
	to_return = not self.butchered and self:GetVisible() and dissect_entry and (self:IsDead() or ignore_is_dead)
	return to_return
end

function UnitAnimal:DissectSlaughter(unit, skill_level, efficiency)
	self.dissect_on_death = true
	print(self.dissect_on_death)
	-- Butchering order is issued only if the animal was killed by (last attacker was) a human. This skips combat logic, so we need to explicitly register unit as attacker
	self:RegisterAttacker(unit, GameTime())
	self:ChangeHealth(-self.Health, "SlaughterDissect")
end


function UnitAnimal:SlaughterDissect(unit, skill_level, efficiency)
	-- Butchering order is issued only if the animal was killed by (last attacker was) a human. This skips combat logic, so we need to explicitly register unit as attacker
	self:RegisterAttacker(unit, GameTime())
	self:ChangeHealth(-self.Health, "Dissection")
end

function Special_Dissection_Trait(unit)
	local trait_bonus = false
	local traits = {'AvidFarmer','SliceNDice','ChefsHands','ChefsMachete','AdvFirstAid','ArtisticSurgeon','EfficientBiologist','4xButcher','MedicInstructor'}
	for _,tra in ipairs(traits) do 
		if unit:HasTrait(tra) then
			trait_bonus = true
			goto continue
		end
	end
	::continue::
	return trait_bonus
end

function ScaleDissectByUnit(amount,unit,skill_lvl,effic)
	local correct_tool = false
	local trait_bonus = Special_Dissection_Trait(unit)
	local bio = skill_lvl
	local multiplier = 100
	local tool_1 = unit:GetEquipment('Tool')
	local tool_2 = unit:GetEquipment('ToolSecondary')
	if tool_1 and tool_1.id == 'BiologistKnife' then
		correct_tool = true
	elseif tool_2 and tool_2.id == 'BiologistKnife' then
		correct_tool = true
	end
	if not correct_tool and not trait_bonus then
		multiplier = multiplier - 50
	elseif correct_tool and trait_bonus then
		multiplier = multiplier + 50
	end
	if bio < 2 then
		multiplier = multiplier - 75
	elseif bio > 6 then
		multiplier = multiplier + 50
	elseif bio == 10 then
		multiplier = multiplier + 100
	end
	amount = MulDivRound(amount * multiplier,1,100)
	return Max(const.ResourceScale,amount)
end

function Mark_organ_found_in_animal(unit_obj,resource_name)
	local chain = Find_evo_chain(unit_obj.class).id
	if not Px_player_organ_extraction[resource_name] then
		Px_player_organ_extraction[resource_name] = {}
		Px_player_organ_extraction[resource_name][chain] = true
	else
		Px_player_organ_extraction[resource_name][chain] = true
	end
end

function UnitCorpse:ProduceDissectResources(unit, skill_level, efficiency)
	local work_action = GetWorkActionInstance(self, "Butcher", unit.player)
	local params = { delay_distribution = true, jump_from = unit }
	local groups = GroupResourceIds
	for _, res_amount in ipairs(self:GetDissectionResources()) do
		local resource = res_amount.resource
		local amount = res_amount.amount
		local group = groups[resource]
		if group then
			resource = group[1]
		end
		amount = ScaleDissectByUnit(amount,unit,skill_level,efficiency)
		amount = RoundResourceAmount(amount)
		local amount_placed, used_piles = ProduceResource(unit, self, resource, amount, nil, params)
		if work_action then
			AttachDeliveryObjectsToPiles(used_piles, unit, work_action.activity_id)
		end
		-- add resource as found in this species
		Mark_organ_found_in_animal(self,resource)
	end
end

--local oldGetButcher = UnitAnimal.IPButcherResourcesText

function UnitCorpse:GetIPButcherResourcesText()
	local resources = self:GetButcherResources()
	if not resources then return "" end

	local texts = {T(207911584306, "Output when butchered")}
	local researched = IsObjectFieldResearched(self, UIPlayer)
	for _, res_amount in ipairs(resources) do
		local res = res_amount.resource
		local max_amount = res_amount.amount
		local amount = self:ScaleByDecay(max_amount)
		amount = RoundResourceAmount(amount) / const.ResourceScale
		texts[#texts + 1] = T{973572456050, "<left><tabulator><em><res(resource)><if(researched)><right><amount>/<res(resource, max_amount)></if></em>",
			resource = res, researched = researched, amount = amount, max_amount = max_amount}
	end
	-- section carving out Dissection section:
	texts[#texts + 1] = T{123321321123,""}
	local d_index = #texts + 1
	texts[#texts + 1] = T{123321321523,"<left><color px_purple_infopanel>Organs residing this species.</color>"}

	local d_rez = self:GetDissectionResources()
	if d_rez then
		local chain = Find_evo_chain(self.class).id
		local all_unknown = true
		local some_unknown = false
		for _, res_amount in ipairs(d_rez) do
			local res = res_amount.resource
			local found = found_organ_in_animal(chain,res)
			if found then
				all_unknown = false
				texts[#texts + 1] = T{73572456050, "<left><tabulator><em><res(resource)><right><res_icon(resource)></em>",resource = res}
			else
				some_unknown = true
				texts[#texts + 1] = T{73572456050, "<left><tabulator><em>Unkown Organelle</em>",resource = res}
			end
		end
		texts[#texts + 1] = T{123321321123,""}
		if some_unknown then
			texts[d_index] = T(207911584456, "<left><color px_purple_infopanel>Known organs in this species.</color>")
		elseif all_unknown then
			texts = T{207911584419, "<left><color px_purple_infopanel>Species requires dissection!</style>"}
		end
	end
	return table.concat(texts, "\n")
end


function UnitCorpse:Dissect(unit, skill_level, efficiency)
	if not self:CanBeDissected(true) then return end
	SuspendProcessing("ResourceChange", self)
	self:ProduceDissectResources(unit, skill_level, efficiency)
	ResumeProcessing("ResourceChange", self)
	self.butchered = true
	Notify(self, "RemoveCorpseUnit")
end

function UnitCorpse:GetDissectionDuration()
	return self.ButcherDuration
end

-- This is a source of truth, the UI function GetIPDissectResourcesText obfuscates based on research level
function UnitAnimal:GetDissectionResources()
	if not self:CanBeDissected(true) then return end
	local result = {}
	local chain = Find_evo_chain(self.class)
	local dissect_entry = false
	local tier = EE_get_tier(self.class)
	for _,v in ipairs(Presets.UnitDissectStandalone.Default) do
		if v.id and v.UnitChain == chain.id then
			dissect_entry = v
		end
	end
	local res_table = {}
	local index = 1
	for _, res_entry in ipairs(dissect_entry.DissectResources) do
		local res = res_entry.resource
		if not res_table[res] then
			res_table[res] = index
			res_table[index] = {
				resource = res,
				amount = (res_entry.min_amount or 1000) * (tier - 1)
			}
			index = index + 1
		else
			local ind = res_table[res]
			local cur_amount = res_table[ind].amount
			res_table[ind].amount = cur_amount + (res_entry.min_amount or 1000)
		end
	end
	if tier > 1 then
		for _, res_entry in ipairs(dissect_entry.TierScaling_add) do
			local res = res_entry.resource
			if not res_table[res] then
				res_table[res] = index
				res_table[index] = {
					resource = res,
					amount = (res_entry.min_amount or 1000) * (tier - 1)
				}
				index = index + 1
			else
				local ind = res_table[res]
				local cur_amount = res_table[ind].amount
				res_table[ind].amount = cur_amount + (res_entry.min_amount or 1000)
			end
		end
		-- Scaling results by percentage
		if dissect_entry.TierScaling_per ~= 100 then 
			for i=1, #res_table do
				if res_table[i] then
					local full_total = res_table[i].amount
					local depercentaged_multiplier = MulDivRound(dissect_entry.TierScaling_per*(tier - 1),1,100)
					local nonstandard_res_amount = full_total * depercentaged_multiplier
					-- need to do this in case percentages give us 500 units of a resource (Which is .5 real units)
					res_table[i].amount = MulDivTrunc(nonstandard_res_amount,1,const.ResourceScale) * const.ResourceScale
				end
			end
		end
	end
	for i=1, #res_table do
		if res_table[i] then
			result[#result+1] = ResAmount:new({
				resource = res_table[i]['resource'],
				amount = res_table[i]['amount'],
			})
		end
	end
	return result
end