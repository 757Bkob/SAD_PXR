
local day_duration = const.DayDuration
MapVar("Px_Empire_rapport",500)
MapVar("Px_Empire_state",1)
MapVar("Px_phyrexia_rapport",0)
MapVar("Px_phrexia_state",0)
MapVar("Px_black_market_state",0)
MapVar("Px_black_market_rapport",0)
-- Ship orbit overhaul
MapVar("Px_ship_logs",{})
-- Tutorials // hints // meta
MapVar("Px_hire_source",'none')
MapVar("Px_hire_dispo",'none')
MapVar("Px_tut",false)
MapVar("Px_droid_tut",false)
MapVar("Px_dis_col_hint",false)
MapVar("Droid_repair_needed",5)
MapVar("Droid_dlc",false)
-- Attack influencing
MapVar("Animal_override",false)
MapVar("Animal_override_attempted",false)
MapVar("Animal_temperament_attempted",false)
MapVar("Animal_temperament_overrive",false)

function SavegameFixups.PXFixes()
	local toBurn = {"BrightMind","EncryptionExpert","HighRisk"}
	local setMachine = false
	--print("Checking for RoboSexuals!")
	MapForEach(true, "Human", function(unit)
		if unit:HasTrait("Machine") and unit:GetRelationship("Lover") then
			unit:SetRelationship(unit:GetRelationship("Lover"), "ExLover")
		end
		if unit:HasTrait("Machine") then
			unit:SetTrait("baseDroid", true, "forced") -- force droid to become a new droid
			setMachine = true
		end
		if unit:HasHealthConditionById("DroidDegradation") and not unit.UnitTags['Robot'] then
			unit:RemoveHealthCondition("DroidDegredation",'px save cleanup')
		end
	end)
	if not Px_tut then
		if setMachine then
			ForceActivateStoryBit("px_droid_intro")
		end
	end
	local cds = Game:GetCooldowns()
	for id, no in ipairs(cds) do
		if id == "Attack" and no > MoonInstance.AttackCooldownMin then
			--print("Attack Cooldown reset because it was above max!")
			Game:SetCooldown("Attack", MoonInstance.AttackCooldownMin, true)
		end
		if id == "MinTimeBetweenAttacks" and no > 128000 then
			--print("MinTimeBetweenAttacks reset because it was above max!")
			Game:SetCooldown("MinTimeBetweenAttacks", MoonInstance.AttackCooldownMin, true)
		end
	end
end

function SavegameFixups.PXR_MapVars()
	local all_vars = {
		--Faction settings
		{name="px_Empire_rapport",init=500,globalvar=Px_Empire_rapport},
		{name="px_Empire_state",init=1,globalvar=Px_Empire_state},
		{name="px_phyrexia_rapport",init=0,globalvar=Px_phyrexia_rapport},
		{name="px_phrexia_state",init=0,globalvar=Px_phrexia_state},
		{name="px_black_market_state",init=0,globalvar=Px_black_market_state},
		{name="px_black_market_rapport",init=0,globalvar=Px_black_market_rapport},
		-- Tutorials // hints // meta
		{name="px_hire_source",init='none',globalvar=Px_hire_source},
		{name="px_hire_dispo",init='none',globalvar=Px_hire_dispo},
		{name="px_tut",init=false,globalvar=Px_tut},
		{name="px_droid_tut",init=false,globalvar=Px_droid_tut},
		{name="px_dis_col_hint",init=false,globalvar=Px_dis_col_hint},
		{name="droid_repair_needed",init=5,globalvar=Droid_repair_needed},
		{name="droid_dlc",init=false,globalvar=Droid_dlc},
		-- Attack influencing
		{name="animal_override",init=false,globalvar=Animal_override},
		{name="animal_override_attempted",init=false,globalvar=Animal_override_attempted},
		{name="animal_temperament_attempted",init=false,globalvar=Animal_temperament_attempted},
		{name="animal_temperament_overrive",init=false,globalvar=Animal_temperament_overrive},
	}
	local flag = false
	for _, var in ipairs(all_vars) do
		if MapVarValues[var['name']] ~= var['init'] then
			var['globalvar'] = MapVarValues[var['name']]
			MapVarValues[var['name']]=var['init']
			flag = true
		end
	end
	if flag then
		DebugPrint("PXR: MapVars fixed up for savegame compatibility!")
	end
end

function HumanoidCompositeBody:IsProtectedFromDisaster(disaster)
	if (disaster == "ToxicAir" or disaster == "DustStorm") and (self:HasValidSurvivalTool("RespiratorMask") or self:HasValidSurvivalTool("TacticalMaskPX")) then
		return true
	end
end

function PXR_instance_fill(base_unit,others,tier)
	-- PXR overriding wrapping the EE evolutions
	DebugPrint("Checking for overrides")
	base_unit = base_unit or false
	if not base_unit and Animal_override then
		base_unit = Animal_override
	end
	-- reset so player can try again
	Animal_override_attempted = false
	Animal_override = false
	Animal_temperament_attempted = false
	Animal_temperament_overrive = false
	tier = tier or 1
	if tier < 1 then tier = 1 end
	return Attack_instance_fill(base_unit,others,tier)
end

local colonist_hiring_table = {
	{name="AliceDerHase",hiring={"Colony Ship","Smuggler Ship"},disposition="Egalitarian"},
	{name="AmiraKali",hiring={"Smuggler Ship"},disposition="Egalitarian"},
	{name="AngelaLichenfield",hiring={"Trade Ship","Colony Ship"},disposition="Independant"},
	{name="AnyaKostic",hiring={"High Value Vetted","Trade Ship","Colony Ship"},disposition="Independant"},
	{name="ArthosMalatesta",hiring={"Trade Ship","Battleship"},disposition="Ambitious"},
	{name="AyaMalatesta",hiring={"Battleship"},disposition="Independant"},
	{name="DmitarKostic",hiring={"Colony Ship"},disposition="Egalitarian"},
	{name="EricShanahan",hiring={"Chipped Criminal","Smuggler Ship"},disposition="Ambitious"},
	{name="IaraTacuara",hiring={"Colony Ship","Battleship"},disposition="Egalitarian"},
	{name="JacqesLeClaire",hiring={"Trade Ship","Smuggler Ship"},disposition="Upstanding Citizen"},
	{name="JadenThompson",hiring={"Trade Ship","Colony Ship"},disposition="Egalitarian"},
	{name="KalebKali",hiring={"Colony Ship"},disposition="Upstanding Citizen"},
	{name="KeoniKanu",hiring={"High Value Vetted","Colony Ship","Battleship"},disposition="Upstanding Citizen"},
	{name="KiaraElias",hiring={"Colony Ship"},disposition="Ambitious"},
	{name="LingWei",hiring={"Chipped Criminal","Smuggler Ship"},disposition="Egalitarian"},
	{name="LukaKostic",hiring={"Colony Ship","Battleship"},disposition="Ambitious"},
	{name="NourLichenfield",hiring={"Battleship"},disposition="Egalitarian"},
	{name="NovaGale",hiring={"Chipped Criminal","Smuggler Ship"},disposition="Independant"},
	{name="RheaRamirez",hiring={"Battleship","Smuggler Ship"},disposition="Upstanding Citizen"},
	{name="ZarinaElias",hiring={"High Value Vetted","Colony Ship"},disposition="Upstanding Citizen"},
	{name="BrunaRainer",hiring={"High Value Vetted","Colony Ship"},disposition="Upstanding Citizen"},
	{name="ChazRelioo",hiring={"High Value Vetted","Battleship"},disposition="Upstanding Citizen"},
	{name="DavidKincaid",hiring={"High Value Vetted","Trade Ship","Battleship"},disposition="Upstanding Citizen"},
	{name="DaynRheo",hiring={"Colony Ship","Battleship"},disposition="Ambitious"},
	{name="DianaVoss",hiring={"High Value Vetted","Battleship"},disposition="Upstanding Citizen"},
	{name="DrSwain",hiring={"High Value Vetted","Trade Ship","Colony Ship"},disposition="Upstanding Citizen"},
	{name="DrakeJames",hiring={"High Value Vetted","Colony Ship"},disposition="Ambitious"},
	{name="EonLouise",hiring={"High Value Vetted","Trade Ship","Colony Ship"},disposition="Upstanding Citizen"},
	{name="FelixHanns",hiring={"Smuggler Ship"},disposition="Ambitious"},
	{name="FioraJasmin",hiring={"Trade Ship","Colony Ship"},disposition="Ambitious"},
	{name="FlokiLee",hiring={"Chipped Criminal","Trade Ship","Smuggler Ship"},disposition="Ambitious"},
	{name="GaleSenario",hiring={"Chipped Criminal","Smuggler Ship"},disposition="Independant"},
	{name="GalenosYaskk",hiring={"Chipped Criminal","Trade Ship","Smuggler Ship"},disposition="Independant"},
	{name="Gizmo",hiring={"Trade Ship","Smuggler Ship"},disposition="Egalitarian"},
	{name="KarlTheMiner",hiring={"Trade Ship","Colony Ship","Smuggler Ship"},disposition="Egalitarian"},
	{name="KassandraInkk",hiring={"Colony Ship"},disposition="Egalitarian"},
	{name="KhanFredrick",hiring={"Trade Ship","Battleship"},disposition="Upstanding Citizen"},
	{name="LeonardoKexx",hiring={"Chipped Criminal","Trade Ship","Smuggler Ship"},disposition="Independant"},
	{name="LunariaPasker",hiring={"Trade Ship","Colony Ship","Smuggler Ship"},disposition="Egalitarian"},
	{name="MarkErikson",hiring={"High Value Vetted","Trade Ship","Colony Ship"},disposition="Egalitarian"},
	{name="OldManJohn",hiring={"High Value Vetted","Colony Ship"},disposition="Independant"},
	{name="OrlandoJunior",hiring={"Trade Ship","Colony Ship"},disposition="Ambitious"},
	{name="PogoDainer",hiring={"Chipped Criminal","Smuggler Ship"},disposition="Ambitious"},
	{name="QuraDunn",hiring={"Smuggler Ship"},disposition="Upstanding Citizen"},
	{name="RayyPasker",hiring={"Trade Ship","Colony Ship","Smuggler Ship"},disposition="Egalitarian"},
	{name="RexLennard",hiring={"Battleship"},disposition="Independant"},
	{name="SamuelJonesPX",hiring={"Colony Ship","Battleship"},disposition="Upstanding Citizen"},
	{name="SarahGospal",hiring={"High Value Vetted","Colony Ship"},disposition="Ambitious"},
	{name="Shadow",hiring={"Chipped Criminal"},disposition="Independant"},
	{name="SyndraRayuk",hiring={"Trade Ship"},disposition="Ambitious"},
	{name="TannerOzk",hiring={"High Value Vetted","Trade Ship","Smuggler Ship"},disposition="Egalitarian"},
	{name="TarraStones",hiring={"Colony Ship","Battleship"},disposition="Egalitarian"},
	{name="TayykJr",hiring={"High Value Vetted","Battleship","Smuggler Ship"},disposition="Ambitious"},
	{name="ToddMasco",hiring={"Trade Ship","Colony Ship"},disposition="Independant"},
	{name="TommyTrucker",hiring={"Colony Ship","Battleship"},disposition="Independant"},
	{name="TzukUnn",hiring={"Chipped Criminal","Trade Ship","Smuggler Ship"},disposition="Ambitious"},
	{name="WilliamAllen",hiring={"High Value Vetted","Colony Ship"},disposition="Upstanding Citizen"},
	{name="XayahFayy",hiring={"Chipped Criminal","Smuggler Ship"},disposition="Independant"},
	{name="XyraLee",hiring={"Battleship"},disposition="Upstanding Citizen"},
	{name="YannaFitch",hiring={"Colony Ship","Smuggler Ship"},disposition="Ambitious"},
	{name="ZackarieOzk",hiring={"Chipped Criminal","Trade Ship","Smuggler Ship"},disposition="Independant"},
	{name="ZanderPogga",hiring={"Colony Ship"},disposition="Ambitious"},
	{name="Anette",hiring={"Trade Ship","Colony Ship"},disposition="Independant"},
	{name="Carter",hiring={"Chipped Criminal","Trade Ship","Smuggler Ship"},disposition="Ambitious"},
	{name="Connor",hiring={"Trade Ship","Battleship","Smuggler Ship"},disposition="Independant"},
	{name="Daniel",hiring={"Trade Ship","Colony Ship"},disposition="Egalitarian"},
	{name="Edmund",hiring={"Colony Ship","Battleship","Smuggler Ship"},disposition="Independant"},
	{name="Ember",hiring={"Trade Ship","Battleship"},disposition="Upstanding Citizen"},
	{name="Emelin",hiring={"Colony Ship","Battleship"},disposition="Ambitious"},
	{name="Greyson",hiring={"Trade Ship","Colony Ship"},disposition="Independant"},
	{name="Hann",hiring={"Trade Ship","Colony Ship"},disposition="Ambitious"},
	{name="Henry",hiring={"Battleship"},disposition="Upstanding Citizen"},
	{name="Hugo",hiring={"Trade Ship","Smuggler Ship"},disposition="Independant"},
	{name="Jack",hiring={"Colony Ship","Battleship"},disposition="Egalitarian"},
	{name="Jayla",hiring={"Trade Ship","Colony Ship"},disposition="Ambitious"},
	{name="Kana",hiring={"Trade Ship","Colony Ship"},disposition="Upstanding Citizen"},
	{name="Katina",hiring={"Trade Ship","Colony Ship"},disposition="Egalitarian"},
	{name="Ken",hiring={"Battleship","Smuggler Ship"},disposition="Independant"},
	{name="Krista",hiring={"Chipped Criminal","Smuggler Ship"},disposition="Egalitarian"},
	{name="Laara",hiring={"Trade Ship","Colony Ship","Smuggler Ship"},disposition="Upstanding Citizen"},
	{name="Maki",hiring={"Trade Ship","Colony Ship","Smuggler Ship"},disposition="Ambitious"},
	{name="Melody",hiring={"High Value Vetted","Trade Ship","Colony Ship","Battleship","Smuggler Ship"},disposition="Upstanding Citizen"},
	{name="Naras",hiring={"Smuggler Ship"},disposition="Egalitarian"},
	{name="Nova",hiring={"Colony Ship","Battleship"},disposition="Upstanding Citizen"},
	{name="Paulette",hiring={"Trade Ship","Smuggler Ship"},disposition="Ambitious"},
	{name="Quinfan",hiring={"Trade Ship","Colony Ship","Battleship","Smuggler Ship"},disposition="Upstanding Citizen"},
	{name="Rakha",hiring={"High Value Vetted","Colony Ship"},disposition="Independant"},
	{name="Rita",hiring={"Trade Ship","Colony Ship"},disposition="Egalitarian"},
	{name="Samantha",hiring={"Battleship"},disposition="Upstanding Citizen"},
	{name="Simon",hiring={"Chipped Criminal","Smuggler Ship"},disposition="Ambitious"},
	{name="Sora",hiring={"Trade Ship","Battleship"},disposition="Independant"},
	{name="Talas",hiring={"Colony Ship","Battleship"},disposition="Upstanding Citizen"},
	{name="Umayr",hiring={"Trade Ship","Colony Ship"},disposition="Independant"},
	{name="Vanessa",hiring={"Smuggler Ship"},disposition="Egalitarian"},
	{name="Vicente",hiring={"Trade Ship","Colony Ship"},disposition="Egalitarian"},
	{name="Vivien",hiring={"Trade Ship","Colony Ship"},disposition="Independant"},
	{name="Yokko",hiring={"Chipped Criminal","Colony Ship","Smuggler Ship"},disposition="Ambitious"},
	{name="Zander",hiring={"Trade Ship","Colony Ship"},disposition="Upstanding Citizen"}
}

function set_random_dispo()
	local dispos = {'Independant','Egalitarian','Ambitious','Upstanding Citizen'}
	local selected = table.rand(dispos,InteractionRand(nil,"Disposition"))
	Px_hire_dispo=selected
	return selected
end

function set_dispo(id)
	for _,v in ipairs(colonist_hiring_table) do
		if v['id']==id then
			if AsyncRand(100) < 85 then --15% chance the dispotition is new
				Px_hire_dispo=v['disposition']
				return
			else
				return set_random_dispo()
			end
		end
	end
	-- end of loop not found, setting random
	return set_random_dispo()
end

function hirable(hire_method)
	local pool_left = GetSurvivorSpawnPool(UIPlayer)
    local results={}
    for _,v in ipairs(pool_left) do
		for _,v2 in ipairs(colonist_hiring_table) do
	        if v==v2['name'] then
				for _,v3 in ipairs(v2['hiring']) do
					--print(v3)
					if hire_method == v3 then
						results[#results+1]=v
					end
				end
			end
        end
    end
	return results
end

function px_select_colonist(hire_method)
	local pool = hirable(hire_method)
	local id = #pool == 1 and pool[1] or table.rand(pool, InteractionRand(nil, "SpawnSurvivor"))
	set_dispo(id)
	px_map_upsert('hire_temp',id)
end

function are_prereqs_loaded()
	--print("Checking for PX PreReqs")
	local ilu = false
	local comlib = false
	local nests_awaken = false
	local friendly_expeditions = false
	for _,mod in ipairs(ModsLoaded) do
		if mod.id == 'rtw6tLg' then
			--print("Found ILU")
			ilu = true
		elseif mod.id == 'sad_commonlib' then
			--print("Found commonlib")
			comlib = true
		elseif mod.id == 'TGkJ3Tu' then
			nests_awaken = true
		elseif mod.id == 'Uqo4QkN' then
			friendly_expeditions = true
		elseif mod.id == 'q2kyFEG' then
			--print("Someone has beyond stranded as well!")
			Presets.ActivitySet.Default.Work.Activities.AT_Excavate = true
		end
	end
	if not (ilu and comlib and friendly_expeditions) then
		ForceActivateStoryBit("PreReqs_Not_Found")
	end
	--[[
	if not (nests_awaken) then
		ForceActivateStoryBit("Soon_to_be_prereqs")
	end--]]
end

function Unchip_Colonist(colonist)
	local chipped_skills = {'Biology','Crafting','Hacking','Healing','Intellectual','Trade'}
	local base_inclinations = CharacterDefs[colonist.id]['SkillInclinations']
	px_map_upsert('px_unchip_target',colonist.id)
	--print(base_inclinations)
	for _,skill in ipairs(chipped_skills) do
		if base_inclinations[skill] == 'Interested' then
			--print("Resetting ",skill," back to interested!")
			colonist:SetSkillInclination(skill,"Interested")
		elseif not (base_inclinations[skill] == 'Indifferent') then
			--print("Resetting ",skill," back to Blank!")
			colonist:SetSkillInclination(skill,false)
		end

	end
end

local function fibCount(no)
-- create Fibonacci sequence
  local fib = {1, 1}  -- starting with 1, 2
  if no < 2 then
  	return fib[no]
  end
  for i=3, no do
    fib[i] = fib[i-2] + fib[i-1]
  end
  return fib[no]
end

function px_gal_droid_raw(pct, free)
	return GetPaymentModifiedByPct(gal_hire_cost_calc(free,'Droid'),pct)
end

function px_gal_human_raw(pct,free)
	return GetPaymentModifiedByPct(gal_hire_cost_calc(free,'Human'),pct)
end

function gal_hire_cost_calc(no_free,type)
	local no_free = no_free or 1
	local type = type or 'Human'
	--print("counting # of ",type," deployed to get next price")
	local count = 0
	local base_price = 100000 --100,000
	if IsGameRuleActive('RandomSurvivors') then
		base_price = base_price * 9 / 10 -- reward players for playing with randomness
	end
	local drm_index = 1
	for _, v in ipairs(AllSurvivors) do
		if v['UnitTags']['Robot'] and type == 'Droid' then
			count = count + 1
		elseif (v['UnitTags']['Human'] or v['UnitTags']['Android']) and type == 'Human' then
			count = count + 1
		end
	end
	--print("There are ",count," ",type," fielded")
	--print("Not counting ",no_free," of them due to reasons!")
	if count < no_free and no_free >= 0 then
		return 0 * base_price * const.ResourceScale
	else
		count = count - no_free
	end
	return fibCount(count+1) * base_price * const.ResourceScale
end

function diminishReturnCheck(classname)
	--print("diminish return check")
	--print(classname)
	local roll = InteractionRand(100, "CheckRandom")
	--print("D100 rolled a: ",roll," the tower formula needs to spit out to a higher #!")
	local no  = MapCount("map", classname)
	--print(no," objects Found!")
	local reductions = (60*no) / (no+4)+15
	--print("Tower formula spat out: ",reductions)
	if reductions > roll then
		--print("Override succeeded")
		return true
	else
		--print("Override failed!")
		return false
	end
end

function get_faction_in_power()
	-- To be expanded at a later date
	return 'Empire'
end

function find_colonist(id)
	--print('looking for: '..id)
	local did_find = MapForEach(true, "Human", function(unit)
		--print(unit.id)
		if unit.id == id then
			--print("Found it!")
			return unit
		end
	end)
	--print(did_find)
	if did_find then return did_find else return nil end
end

function assign_loyalty(surv_id)
	--print(survivor_instance)
	--print(survivor_instance.id)
	--local survivor = find_colonist(survivor_instance.id) or nil
	--if not survivor then return end
	local source = Px_hire_source or 'unknown'
	--print(source)
	--print(surv_id)
	if surv_id == nil or surv_id == false then return end
	local dispo = Px_hire_dispo or set_random_dispo()
	Px_hire_source='none'
	Px_hire_dispo='none'
	local weights = {}
	weights[#weights+1]=65
	local None = #weights
	weights[#weights+1]=25
	local Empire = #weights
	weights[#weights+1]=20
	local Rebellion = #weights
	weights[#weights+1]=15
	local Phyrexia = #weights
	weights[#weights+1]=5
	local Vegan = #weights
	-- {'Independant','Egalitarian','Ambitious','Upstanding Citizen'}
	if dispo == 'Upstanding Citizen' then
		weights[Empire]= weights[Empire] * 3
		weights[Rebellion]= weights[Rebellion] * (1 / 4)
		weights[Vegan]= weights[Vegan] * (1 / 2 )
		weights[Phyrexia]= weights[Phyrexia] * (1 / 2 )
	elseif dispo == 'Independant' then
		weights[Empire]= weights[Empire] * (1 / 4)
		weights[Rebellion]= weights[Rebellion] * 3
		weights[Vegan]= weights[Vegan] * 4
		weights[Phyrexia]= weights[Phyrexia] * (1 / 2 )
	elseif dispo == 'Egalitarian' then
		weights[Empire]= weights[Empire] * (1/4)
		weights[Rebellion]= weights[Rebellion] * 3
		weights[Vegan]= weights[Vegan] * 6
		weights[Phyrexia]= weights[Phyrexia] * (1/2)
	elseif dispo == 'Ambitious' then
		weights[Empire]= weights[Empire] * 4
		weights[Rebellion]= weights[Rebellion] * (1/4)
		weights[Vegan]= weights[Vegan] * (1/4)
		weights[Phyrexia]= weights[Phyrexia] * 9
	end
	local faction = 'Empire'--get_faction_in_power()
	if faction == 'Empire' then
		weights[Empire]= weights[Empire] * 3
		weights[Rebellion]= weights[Rebellion] * (1/4)
		weights[Vegan]= weights[Vegan] * (1/2)
		weights[Phyrexia]= weights[Phyrexia] * 2
	elseif faction == 'Rebels' then
		weights[Empire]= weights[Empire] * (1/4)
		weights[Rebellion]= weights[Rebellion] * 3
		weights[Vegan]= weights[Vegan] * 2
		weights[Phyrexia]= weights[Phyrexia] * (1/2)
	elseif faction == 'Vegans' then
		weights[Empire]= weights[Empire] * (1/4)
		weights[Rebellion]= weights[Rebellion] * 1
		weights[Vegan]= weights[Vegan] * 6
		weights[Phyrexia]= weights[Phyrexia] * (1/2)	
	elseif faction == Phyrexia then
		weights[Empire]= weights[Empire] * 1
		weights[Rebellion]= weights[Rebellion] * (1/2)
		weights[Vegan]= weights[Vegan] * (1/2)
		weights[Phyrexia]= weights[Phyrexia] * 6
	end
	local weight_picked
	local index_picked
	local seed
	weight_picked, index_picked, seed  = table.weighted_rand(weights,function(weight)return weight end)
	local trait_to_give = ''
	if index_picked == None then
		--print("No Loyalty!")
		--survivor_instance:SetTrait("PX_No_Loyalty_Hidden", true, "forced")
		trait_to_give = "PX_No_Loyalty_Hidden"
	elseif index_picked == Empire then
		--print("Empire Loyalty!")
		--survivor_instance:SetTrait("PX_Empire_Loyalty_Hidden", true, "forced")
		trait_to_give = "PX_Empire_Loyalty_Hidden"
	elseif index_picked == Rebellion then
		--print("Rebellion Loyalty!")
		--survivor_instance:SetTrait("PX_Rebellion_Loyalty_Hidden", true, "forced")
		trait_to_give = "PX_Rebellion_Loyalty_Hidden"
	elseif index_picked == Vegan then
		--print("Vegan Loyalty!")
		--survivor_instance:SetTrait("PX_Vegan_Loyalty_Hidden", true, "forced")
		trait_to_give = "PX_Vegan_Loyalty_Hidden"
	elseif index_picked == Phyrexia then
		--print("Phyrexian Loyalty!")
		--survivor_instance:SetTrait("PX_Phyrexia_Loyalty_Hidden", true, "forced")
		trait_to_give = "PX_Phyrexia_Loyalty_Hidden"
	end
	--print("Looking for: "..surv_id)
	--print("Assigning this loyalty: "..trait_to_give)
	--print('Are they a criminal? :')
	--print(source == 'Criminal')
	MapForEach(true, "Human", function(unit,surv_id,source,trait_to_give)
		--print(unit.id)
		if unit.id == surv_id then
			--print("Found them!")
			if source == 'Criminal' then
				--print("Force giving htem the chip!")
				unit:AddHealthCondition('ChippedCriminal','hired via criminal')
			end
			unit:SetTrait(trait_to_give, true, "forced")
		end
	end,surv_id,source,trait_to_give)
end

function give_chip_healer_traits(action)
	action = action or false
	--print(action)
	MapForEach(true, "Human", function(unit,action)
		--print(unit.id)
		--print(unit:GetSkillLevel('Healing'))
		--print(unit:GetSkillLevel('Healing')>=8)
		--print(unit:GetSkillLevel('Hacking'))
		--print(unit:GetSkillLevel('Healing')>=8)
		if action and unit:GetSkillLevel('Healing') >= 8 and unit:GetSkillLevel('Hacking') >= 8 and not unit:HasTrait("chip_medic") then
			unit:SetTrait("chip_medic", true, "forced")
		elseif not action and unit:HasTrait("chip_medic") then
			unit:RemoveTrait("chip_medic")
		end
	end,action)
end

function px_droid_repair()
	local count = 0
	for _, v in ipairs(AllSurvivors) do
		if v['UnitTags']['Robot'] then
			count = count + 1
		end
	end
	return (count+1) * 1000 * 5
end

-- Based on src/Lua/Human.Lua -> GetSurvivorSpawnPool
-- Also based on src/Lua/
function px_hire_skill(skill)
	local all_spawn_pool = empty_table
	local fin_spawn_pool = {}
	local remove = table.remove
	local possible_skill_level = 0
	local possible_inclination = ''
	local is_droid = false
	all_spawn_pool = table.keys(CharacterDefs, true)
	for i = #(all_spawn_pool or ""), 1, -1 do
		-- remove already spawned survivors from pool
		if SpawnedSurvivorIds[all_spawn_pool[i]] then
			remove(all_spawn_pool, i)
		end
	end
	for i = #all_spawn_pool, 1, -1 do
		possible_skill_level = CharacterDefs[all_spawn_pool[i]]['Skills'][skill] or 1
		possible_inclination = CharacterDefs[all_spawn_pool[i]]['SkillInclinations'] or 'Not Set'
		is_droid = CharacterDefs[all_spawn_pool[i]]['UnitTags']['Droid'] or false
		if possible_skill_level > 4 or possible_inclination == 'Interested' and not is_droid then
			fin_spawn_pool[#fin_spawn_pool+1] = all_spawn_pool[i]
		end
	end
	local id_to_spawn = #fin_spawn_pool == 1 and fin_spawn_pool[1] or table.rand(fin_spawn_pool, InteractionRand(nil, "SpawnSurvivor"))
	set_dispo(id_to_spawn)
	px_map_upsert('hire_temp',id_to_spawn)
end

function TFormat.not_enough_droid_repair(context_obj)
	return FormatResource(Resources["PX_droidRepair"], px_droid_repair())
end

function TFormat.px_gal_droid(context_obj,pct,free)
	free = free or 1
	pct = pct or 100
	local cost_without_scale = gal_hire_cost_calc(free,'Droid') / const.ResourceScale
	return StoryBitFormatCost(GetPaymentModifiedByPct(cost_without_scale,pct))
end

function TFormat.px_gal_human(context_obj,pct,free)
	pct = pct or 100
	free = free or 5
	local cost_without_scale = gal_hire_cost_calc(free,'Human') / const.ResourceScale
	return StoryBitFormatCost(GetPaymentModifiedByPct(cost_without_scale,pct))
end

function TFormat.best_two_skill(context_obj)
	local id = Hire_temp or nil
	if not id then return T{121110090813,'ERROR'} end
	local def = CharacterDefs[id]
	local best_all = def:GetUIBestSkills(3)
	local best_1 = best_all[1]['table'][1]['name']
	local best_2 = best_all[1]['table'][2]['name']
	local best_3 = best_all[1]['table'][3]['name']
	return T{121110090812, "<first>, <second>, & <third>",first=best_1,second=best_2,third=best_3}
end

function TFormat.place_final_if_random(context_obj)
	if IsGameRuleActive("RandomSurvivors") then return Untranslated(':: <color TextNegative>Final Answer!</color>') else return '' end
end

function TFormat.faction_list(context_obj)
end

function TFormat.hire_echo_name(context_obj)
	local id = Hire_temp or nil
	if not id then return T{121110090813,'ERROR'} end
	local def = CharacterDefs[id]
	local fn = def.FirstName
	local ln = def.LastName
	return T{121110090807, "<FirstName> <LastName>", FirstName = fn, LastName = ln}
end

function TFormat.hire_echo_description(context_obj)
	local id = Hire_temp or nil
	if not id then return T{121110090813,'ERROR'} end
	local def = CharacterDefs[id]
	return T{121110090808, "<Description>", Description = def.Headline}
end

function TFormat.hire_echo_disposition(context_obj)
	if not Px_hire_dispo then
		set_random_dispo()
	end
	local d = Px_hire_dispo or set_random_dispo()
	if d == 'Upstanding Citizen' then
		return T{121110090809, "Upstanding Citizen"}
	elseif d == 'Ambitious' then
		return T{121110090810, "Ambitious Soul"}
	elseif d == 'Egalitarian' then
		return T{121110090811, "Egalitarian"}
	elseif d == 'Independant' then
		return T{121110090812, "Fiercely Independant"}
	end
	return nil
end

local function px_init(id)
	id = id or CurrentModId
	build_ship_logs()
	if CurrentModId ~= id then return end
end

local function px_full()
	px_init('ucCehPy')
	CreateGameTimeThread(function()
		Sleep(day_duration)
		are_prereqs_loaded()
	end)
	Refresh_ship_list()
	Check_for_unknown_ships()
	return
end

OnMsg.LoadGame = px_full
OnMsg.GameStarted = px_full


function PXR_Repair_Drain(bench,unit,slots)
	local scale = 1000
	-- 1 repair kit granted for every x health drained from an equipment
	local repairKitRatioDecay = 10
	-- 1 repair kit granted for every x% dirtiness drained from equipment
	local repairKitRatioDirty = 20
	local repairKits = 0
	for _,slot in slots do
		if EquipSlotsNames[slot] then
			local equipment_def = unit:GetEquipment(slot)
			if equipment_def and ResHasDirtiness(equipment_def) then
				local set_decay_to = MulDivRound(unit:GetEquipment(slot).MaxHealth, 10, 100)
				local decay_old = unit:GetEquipmentData(slot, "decay")
				local decayDrained = Max(0,set_decay_to - decay_old)
				if decayDrained > 0 then
					repairKits = repairKits + DivRound(decayDrained,(scale * repairKitRatioDecay))
				end
				local set_dirtiness_to = 5*scale
				local dirt_old = unit:GetEquipmentData(slot, "dirtiness")
				local dirtDrained = Max(0,set_dirtiness_to - dirt_old)
				if dirtDrained > 0 then
					repairKits = repairKits + DivRound(dirtDrained,(scale * repairKitRatioDirty))
				end
				-- need to set the equipment to that destroyed value
				local info = unit.res_stacks_info
				local indices = unit.res_stacks_indices[equipment_def.id]
				for _, idx in ipairs(indices) do
					local stack = info[idx]
					local count = DivRound(stack.amount or 0, ResourceScale)
					local decay = stack.decay or {}
					stack.decay = decay
					local dirtiness = stack.dirtiness or {}
					stack.dirtiness = dirtiness
					local equipped = stack.equipped
					if next(equipped) then
						for i = count, 1, -1 do
							if equipped[i] == slot then
								if decayDratined then
									decay[i] = set_decay_to - 1
									Msg("UnitWithOldEquipment", unit, slot)
								end
								if dirtDrained then
									dirtiness[i] = set_dirtiness_to
									unit:AddHappinessFactor("ClothesDirty", equipment_def.id)
								end
							end
						end
					end
				end
				unit:ApplyEquipement()
				-- adding the repair kits to inventory
				local res_scale = const.ResourceScale
				local res = 'RepairKitPX'
				local amount = repairKits * res_scale
				if amount <= 0 then return end
				local res_def = Resources['RepairKitPX']
				local res_decay = MulDivRound(output_decay, res_def.MaxHealth, max_percentage)
				local res_info = {}
				if res_def.PerItemHealth then
					local res_count = DivCeil(amount, const.ResourceScale)
					local decay = {}
					for i = 1, res_count do
						decay[i] = res_decay
					end
					res_info.decay = decay
				else
					res_info.decay = res_decay
				end
				bench:AddRes(res, amount, res_info)
			end
		end
	end
end

function PXR_Repair_Repair(bench,unit,slots)
	local scale = 1000
	-- 1 repair kit granted for every x health drained from an equipment
	local repairKitRatioDecay = 10
	-- 1 repair kit granted for every x% dirtiness drained from equipment
	local repairKitRatioDirty = 20
	local repairKits = 0
	for _,slot in slots do
		if EquipSlotsNames[slot] then
			local equipment_def = unit:GetEquipment(slot)
			if equipment_def and ResHasDirtiness(equipment_def) then
				--local  = MulDivRound(unit:GetEquipment(slot).MaxHealth, 10, 100)
				local decay_old = unit:GetEquipmentData(slot, "decay")
				local can_full_heal = 1
				local decayDrained = Max(0,set_decay_to - decay_old)
				if decayDrained > 0 then
					repairKits = repairKits + DivRound(decayDrained,(scale * repairKitRatioDecay))
				end
				local set_dirtiness_to = 5*scale
				local dirt_old = unit:GetEquipmentData(slot, "dirtiness")
				local dirtDrained = Max(0,set_dirtiness_to - dirt_old)
				if dirtDrained > 0 then
					repairKits = repairKits + DivRound(dirtDrained,(scale * repairKitRatioDirty))
				end
				-- need to set the equipment to that destroyed value
				local info = unit.res_stacks_info
				local indices = unit.res_stacks_indices[equipment_def.id]
				for _, idx in ipairs(indices) do
					local stack = info[idx]
					local count = DivRound(stack.amount or 0, ResourceScale)
					local decay = stack.decay or {}
					stack.decay = decay
					local dirtiness = stack.dirtiness or {}
					stack.dirtiness = dirtiness
					local equipped = stack.equipped
					if next(equipped) then
						for i = count, 1, -1 do
							if equipped[i] == slot then
								if decayDratined then
									decay[i] = set_decay_to - 1
									Msg("UnitWithOldEquipment", unit, slot)
								end
								if dirtDrained then
									dirtiness[i] = set_dirtiness_to
									unit:AddHappinessFactor("ClothesDirty", equipment_def.id)
								end
							end
						end
					end
				end
				unit:ApplyEquipement()
				-- adding the repair kits to inventory
				local res_scale = const.ResourceScale
				local res = 'RepairKitPX'
				local amount = repairKits * res_scale
				if amount <= 0 then return end
				local res_def = Resources['RepairKitPX']
				local res_decay = MulDivRound(output_decay, res_def.MaxHealth, max_percentage)
				local res_info = {}
				if res_def.PerItemHealth then
					local res_count = DivCeil(amount, const.ResourceScale)
					local decay = {}
					for i = 1, res_count do
						decay[i] = res_decay
					end
					res_info.decay = decay
				else
					res_info.decay = res_decay
				end
				bench:AddRes(res, amount, res_info)
			end
		end
	end
end