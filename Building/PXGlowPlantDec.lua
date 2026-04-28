UndefineClass('PXGlowPlantDec')
DefineClass.PXGlowPlantDec = {
	__parents = { "Building", "DecorationComponent", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(875611906968, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Glowing Plant"),
	description = T(420480280228, --[[ModItemLootDef ScavengeGenericDebris description]] "This is a plant... a plant that glows."),
	menu_display_name = T(321792737131, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Glowing Plant"),
	BuildMenuIcon = "General/GlowPlantDecPX.png",
	BuildMenuPos = 35,
	display_name_pl = T(223272835742, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Glowing Plant"),
	display_name_short = T(949437596088, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Glowing Plant"),
	entity = "GlowingPlantDecPX",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		Stone = 10000,
		Wood = 25000,
	}),
	construction_points = 40000,
	Health = 300000,
	MaxHealth = 300000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-900, -900, 0, 900, 900, 1750),
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

