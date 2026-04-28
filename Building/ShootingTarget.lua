UndefineClass('ShootingTarget')
DefineClass.ShootingTarget = {
	__parents = { "Building", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "Leisure",
	display_name = T(887467565446, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Durable Shooting target"),
	description = T(450381500634, --[[ModItemLootDef ScavengeGenericDebris description]] "Used for relaxation. Grants Combat experience on use."),
	BuildMenuIcon = "UI/Icons/Build Menu/shooting_target",
	BuildMenuPos = 5020,
	display_name_pl = T(529598235395, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Shooting targets"),
	entity = "ShootingTarget",
	labels = {
		"BerserkTargets",
		"Buildings",
		"RelaxationDevices",
		"ShootingTarget",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		Hay = 30000,
		Wood = 30000,
	}),
	construction_points = 10000,
	repair_cost = PlaceObj('ConstructionCost', {
		Hay = 30000,
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
	SkirtSize = 229,
	EntityHeight = 1892,
	show_damage_notification = false,
	CustomMaterial = "Canvas",
	attack_attraction = 10,
	UseTargetSpot = true,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	RelaxationDeviceComponent = true,
}

