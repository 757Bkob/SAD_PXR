UndefineClass('AdvancedCarbonTower')
DefineClass.AdvancedCarbonTower = {
	__parents = { "FortificationTower" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "FortificationTower",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "TradeFortifications",
		}),
	},
	BuildMenuCategory = "sub_GalacticFortificationsWallsPX",
	display_name = T(683406819250, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Advanced Carbon Tower"),
	description = T(752860172446, --[[ModItemLootDef ScavengeGenericDebris description]] "Elevated shooting platform. Drafted survivors could use it to shoot above fortifications and fences. Galactic materials used increase the Carbon's strength and durability by a large amount."),
	menu_display_name = T(188026592343, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Advanced Carbon Towers"),
	BuildMenuIcon = "Trade/AdvCarbonTower.png",
	BuildMenuPos = 3,
	display_name_pl = T(773472322927, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Advanced Carbon Towers"),
	display_name_short = T(152333994415, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Advanced Carbon Towers"),
	entity = "CarbonTower",
	labels = {
		"Structures",
		"BerserkTargets",
	},
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 100000,
	}),
	construction_points = 28000,
	Health = 2000000,
	MaxHealth = 2000000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
	upgrade_label = "Tower",
	RoomPlacement = "outdoors",
	lock_flags = 12,
	lock_block_box = box(-900, -900, 0, 900, 900, 2800),
	lock_pass_box = box(-1800, -600, 0, -600, 600, 2100),
	max_depth = 250,
	max_elevate = 250,
	MinConstructionSkill = 5,
	soil_border = 600,
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "Plastic",
	range_tags = {
		"combat",
	},
	attack_attraction = 0,
	affected_by_disasters = set(),
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
}

