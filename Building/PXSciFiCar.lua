UndefineClass('PXSciFiCar')
DefineClass.PXSciFiCar = {
	__parents = { "Building", "DecorationComponent", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(691906815532, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Sci-Fi Car"),
	description = T(991954375041, --[[ModItemLootDef ScavengeGenericDebris description]] "I wonder what this means? Could it be...."),
	menu_display_name = T(550744284544, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Sci-Fi Car"),
	BuildMenuIcon = "General/PXCar.png",
	BuildMenuPos = 50,
	display_name_pl = T(406730173189, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Sci-Fi Car"),
	display_name_short = T(142729337791, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Sci-Fi Car"),
	entity = "PXSciFiCar",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 100000,
		ScrapElectronics = 10000,
		ScrapMetal = 100000,
	}),
	construction_points = 40000,
	Health = 300000,
	MaxHealth = 300000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-1800, -3600, 0, 1800, 3600, 2100),
	access_range = 2400,
	attack_attraction = 5,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	DecorationComponent = true,
	OwnedComponent = true,
	RelaxationDeviceComponent = true,
	ownership_class = "Chair",
}

