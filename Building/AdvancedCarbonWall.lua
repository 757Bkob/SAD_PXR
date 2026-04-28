UndefineClass('AdvancedCarbonWall')
DefineClass.AdvancedCarbonWall = {
	__parents = { "FortWallPiece" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "FortWallPiece",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "TradeFortifications",
		}),
	},
	BuildMenuCategory = "sub_GalacticFortificationsWallsPX",
	display_name = T(112661407127, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Advanced Carbon Wall"),
	description = T(422666690743, --[[ModItemLootDef ScavengeGenericDebris description]] "Tall and durable wall used for defense against hostile species. Has extra durability and resistances."),
	menu_display_name = T(982420608965, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Advanced Carbon Wall"),
	BuildMenuIcon = "Trade/AdvCarbonWall.png",
	BuildMenuPos = 30,
	display_name_pl = T(624369392837, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Advanced Carbon Wall"),
	display_name_short = T(475906137575, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Advanced Carbon Wall"),
	labels = {
		"Structures",
	},
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 35000,
	}),
	construction_points = 2800,
	NextTemplate = {
		"Gate_Wood",
	},
	Health = 2000000,
	MaxHealth = 2000000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
	use_upgrade_dummy = false,
	upgrade_label = "Wall",
	RoomPlacement = "outdoors",
	max_depth = 350,
	IgnoredObstacles = {
		"FortificationElement",
	},
	MinConstructionSkill = 5,
	can_be_moved = false,
	fx_actor_base_class = "Fortification",
	apply_res_reqs = false,
	CustomMaterial = "Plastic",
	range_tags = {
		"combat",
	},
	attack_attraction = 0,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	material = "Carbon",
	column_freq = 5,
	column_priority = 1000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
}

