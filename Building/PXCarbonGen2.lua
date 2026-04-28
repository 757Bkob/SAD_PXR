UndefineClass('PXCarbonGen2')
DefineClass.PXCarbonGen2 = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent", "ResConsumerDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	BuildMenuCategory = "sub_GalacticPowerPX",
	display_name = T(234050900027, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Carbon Generator"),
	description = T(388243326025, --[[ModItemLootDef ScavengeGenericDebris description]] "Generates a greater amount of <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100> while burning fuel."),
	menu_display_name = T(559126440496, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Carbon Generator"),
	BuildMenuIcon = "General/CarbonGen2.png",
	BuildMenuPos = 8,
	display_name_pl = T(853907948034, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Carbon Generator"),
	entity = "PXCarbonGen2",
	labels = {
		"PowerSources",
		"BerserkTargets",
	},
	update_interval = 10000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		LiquidFuel = 50000,
		Metal = 50000,
		ScrapElectronics = 5000,
	}),
	construction_points = 40000,
	repair_cost = PlaceObj('ConstructionCost', {
		ScrapMetal = 30000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	lock_block_box = box(-1200, -900, 0, 1200, 900, 1750),
	access_range = 2400,
	realtime_working_anim = true,
	attack_attraction = 20,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	ResConsumerDeviceComponent = true,
	IsPowerGenerator = true,
	Production = 225000,
	HasSmartConnection = true,
	res_consumed = "LiquidFuel",
	res_stored = 50000,
	res_operate_time = 4000000,
	res_start_fueled = true,
}

