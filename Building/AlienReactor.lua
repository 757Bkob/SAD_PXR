UndefineClass('AlienReactor')
DefineClass.AlienReactor = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "AlienReactor",
		}),
	},
	BuildMenuCategory = "sub_AlienPowerPX",
	display_name = T(914305769827, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Alien Reactor Battery"),
	description = T(873559221505, --[[ModItemLootDef ScavengeGenericDebris description]] "An advanced version of the Cyber battery except this has a huge capacity boost.  Stores and supplies stored <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100>. This version of the battery cannot be effected by natural disasters. Due to it being alien technology, it is unlikely to malfunction.\n\n<center><style red>Contraband</style>"),
	BuildMenuIcon = "General/AlienBatteryPX.png",
	BuildMenuPos = 5,
	display_name_pl = T(251972047901, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Alien Reactor"),
	display_name_short = T(652982217862, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Alien Reactor"),
	entity = "PXAlienBattery03",
	labels = {
		"PowerSources",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		AlienCore = 2000,
		AlienElectronics = 10000,
		AlienProcessor = 1000,
		CarbonNanotubes = 200000,
	}),
	construction_points = 100000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 115000,
	}),
	Health = 1300000,
	MaxHealth = 1300000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
	lock_block_box = box(-2400, -900, 0, 2400, 900, 2450),
	MinConstructionSkill = 7,
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
	MinTimeToMalfunction = 769308167102355968,
	MaxTimeToMalfunction = 769308167102355968,
	MinMalfunctionDamage = 0,
	MaxMalfunctionDamage = 20,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerStorage = true,
	StorageCapacity = 11000000,
	MaxCharge = 2015000,
	MaxDischarge = 5015000,
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

