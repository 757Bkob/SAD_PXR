UndefineClass('CarbonBattery')
DefineClass.CarbonBattery = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	BuildMenuCategory = "sub_GalacticPowerPX",
	display_name = T(427168931901, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Carbon Battery"),
	description = T(788279792588, --[[ModItemLootDef ScavengeGenericDebris description]] "Stores and supplies stored <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100>. Has an increased amount of storage capacity than the traditional batteries used."),
	menu_display_name = T(305876050439, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Carbon Battery"),
	BuildMenuIcon = "General/CarbonBattery2.png",
	BuildMenuPos = 5,
	display_name_pl = T(843195022593, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Batteries"),
	entity = "PXCarbonBatteryNew",
	labels = {
		"PowerSources",
		"BerserkTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 100000,
		ScrapElectronics = 5000,
	}),
	construction_points = 30000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 50000,
		ScrapElectronics = 3000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 70000,
		ScrapElectronics = 3000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	lock_block_box = box(-600, -600, 0, 600, 600, 3850),
	MinConstructionSkill = 4,
	access_range = 2400,
	realtime_working_anim = true,
	attack_attraction = 20,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	MinTimeToMalfunction = 28800000,
	MaxTimeToMalfunction = 67200000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerStorage = true,
	StorageCapacity = 5000000,
	MaxCharge = 1000000,
	MaxDischarge = 2500000,
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

