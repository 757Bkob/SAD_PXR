UndefineClass('PXFrostyMushroom')
DefineClass.PXFrostyMushroom = {
	__parents = { "Building", "DecorationComponent", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(168235357679, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Frosty Mushroom"),
	description = T(724451103784, --[[ModItemLootDef ScavengeGenericDebris description]] "I wonder what happens if I touch it?"),
	menu_display_name = T(816107322238, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Frosty Mushroom"),
	BuildMenuIcon = "General/FrostyShroomDecPX.png",
	BuildMenuPos = 36,
	display_name_pl = T(890935968305, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Frosty Mushroom"),
	display_name_short = T(852032311292, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Frosty Mushroom"),
	entity = "PXDecorMushrooms",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		AlienShroom = 10000,
		Wood = 25000,
	}),
	construction_points = 40000,
	Health = 300000,
	MaxHealth = 300000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-600, -600, 0, 600, 600, 1400),
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

