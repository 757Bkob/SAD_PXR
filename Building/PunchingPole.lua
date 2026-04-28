UndefineClass('PunchingPole')
DefineClass.PunchingPole = {
	__parents = { "Building", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "Leisure",
	display_name = T(585434733340, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Durable Punching pole"),
	description = T(657449744188, --[[ModItemLootDef ScavengeGenericDebris description]] "Used for relaxation. Grants Physical and Combat experience on use."),
	BuildMenuIcon = "UI/Icons/Build Menu/punching_bag",
	BuildMenuPos = 5010,
	display_name_pl = T(956150631826, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Punching poles"),
	entity = "PunchingPole",
	labels = {
		"BerserkTargets",
		"Buildings",
		"PunchingPole",
		"RelaxationDevices",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		Hay = 10000,
		Leathers = 20000,
		Wood = 20000,
	}),
	construction_points = 10000,
	repair_cost = PlaceObj('ConstructionCost', {
		Hay = 10000,
	}),
	Health = 2000000,
	MaxHealth = 2000000,
	DamagedStateAt = 90,
	BrokenStateAt = 10,
	damage_reduction = {
		blunt = 99,
		energy = 99,
		gas = 99,
		piercing = 99,
	},
	lock_block_box = box(-600, -600, 0, 600, 600, 1750),
	SkirtSize = 363,
	EntityHeight = 1941,
	show_damage_notification = false,
	access_range = 1800,
	CustomMaterial = "Carpet",
	attack_attraction = 10,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	RelaxationDeviceComponent = true,
}

