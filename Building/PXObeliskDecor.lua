UndefineClass('PXObeliskDecor')
DefineClass.PXObeliskDecor = {
	__parents = { "Building", "DecorationComponent", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(173888609880, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Obelisk"),
	description = T(388769973265, --[[ModItemLootDef ScavengeGenericDebris description]] "An ancient obelisk to admire."),
	menu_display_name = T(526930119010, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Obelisk"),
	BuildMenuIcon = "General/ObeliskDecorPX.png",
	BuildMenuPos = 34,
	display_name_pl = T(328540126102, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Obelisk"),
	display_name_short = T(480584832807, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Obelisk"),
	entity = "PXObeliskDec",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		Stone = 50000,
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

