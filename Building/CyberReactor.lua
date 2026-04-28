UndefineClass('CyberReactor')
DefineClass.CyberReactor = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "CyberReactor",
		}),
	},
	BuildMenuCategory = "sub_CyberPowerPX",
	display_name = T(307574660500, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Cyber Reactor Battery"),
	description = T(645318750737, --[[ModItemLootDef ScavengeGenericDebris description]] "An advanced version of the standard battery except this has a capacity boost. Stores and supplies stored <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100>. This version of the battery cannot be effected by natural disasters. However is more prone to malfunctions. "),
	BuildMenuIcon = "General/CyberBattery02.png",
	BuildMenuPos = 5,
	display_name_pl = T(393810764891, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Cyber Reactor"),
	display_name_short = T(843664493910, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Cyber Reactor"),
	entity = "PXCyberBattery02",
	labels = {
		"PowerSources",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 100000,
		CyberCrystal = 5000,
		CyberProcessor = 1000,
	}),
	construction_points = 100000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 50000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	lock_block_box = box(-1800, -1800, 0, 1800, 1800, 3850),
	MinConstructionSkill = 4,
	apply_res_reqs = false,
	access_range = 2400,
	realtime_working_anim = true,
	attack_attraction = 20,
	affected_by_disasters = set(),
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	MinTimeToMalfunction = 48000000,
	MaxTimeToMalfunction = 96000000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerStorage = true,
	StorageCapacity = 6000000,
	MaxCharge = 1015000,
	MaxDischarge = 2600000,
	HasPowerIndicator = true,
}


function PowerBattery:CheatChargeUp()
	self:SetStorageCharge(GetMaxPowerStorageCapacity(self))
end

function PowerBattery:CheatEmpty()
	self:SetStorageCharge(0)
end

function SavegameFixups.UpdateBatteryDischargeRate()
	MapForEach("map", "Building", function(obj)
		if obj.PowerComponent and obj.IsPowerStorage then
			obj:UpdatePowerElement()
		end
	end)
end

