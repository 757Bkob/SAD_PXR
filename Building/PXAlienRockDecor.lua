UndefineClass('PXAlienRockDecor')
DefineClass.PXAlienRockDecor = {
	__parents = { "Building", "DecorationComponent", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(112726033662, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Alien Rock"),
	description = T(426808256276, --[[ModItemLootDef ScavengeGenericDebris description]] "A rock with some strange green substance... I mean, it cant be all that great can it?"),
	menu_display_name = T(597674169219, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Alien Rock"),
	BuildMenuIcon = "General/AlienRockPXDecor.png",
	BuildMenuPos = 34,
	display_name_pl = T(750424554092, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Alien Rock"),
	display_name_short = T(930855361673, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Alien Rock"),
	entity = "AlienRockDecPX",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		GlutchGlands = 5000,
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

