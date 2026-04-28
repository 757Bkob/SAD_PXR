UndefineClass('PXRingSculpture')
DefineClass.PXRingSculpture = {
	__parents = { "Building", "DecorationComponent", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(574321499844, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Ring Sculpture"),
	description = T(295076187058, --[[ModItemLootDef ScavengeGenericDebris description]] "Some strange ring on a rock formation."),
	menu_display_name = T(386186282018, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Ring Sculpture"),
	BuildMenuIcon = "General/RingSculptureDecPX.png",
	BuildMenuPos = 37,
	display_name_pl = T(648842736073, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Ring Sculpture"),
	display_name_short = T(341767191530, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Ring Sculpture"),
	entity = "PXRingSculptureD",
	labels = {
		"BerserkTargets",
		"x_ansible",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 25000,
		Stone = 50000,
	}),
	construction_points = 40000,
	Health = 300000,
	MaxHealth = 300000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-1200, -2700, 0, 1500, 2700, 3850),
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

