UndefineClass('PXTreeDecor')
DefineClass.PXTreeDecor = {
	__parents = { "Building", "DecorationComponent", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(476665195901, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Crystal Tree"),
	description = T(519849317900, --[[ModItemLootDef ScavengeGenericDebris description]] "A crystalized tree that provides comfort to survivors."),
	menu_display_name = T(329013428302, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Crystal Tree"),
	BuildMenuIcon = "General/TreeDecorPX.png",
	BuildMenuPos = 33,
	display_name_pl = T(761127461876, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Crystal Tree"),
	display_name_short = T(219977464861, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Crystal Tree"),
	entity = "PXTreeDecoration",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		EnergyCrystals = 5000,
		Stone = 25000,
		Wood = 50000,
	}),
	construction_points = 40000,
	Health = 300000,
	MaxHealth = 300000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-900, -1800, 0, 1800, 2400, 4900),
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

