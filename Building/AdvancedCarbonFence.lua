UndefineClass('AdvancedCarbonFence')
DefineClass.AdvancedCarbonFence = {
	__parents = { "FenceWallPiece" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "FenceWallPiece",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "TradeFortifications",
		}),
	},
	BuildMenuCategory = "sub_GalacticFortificationsWallsPX",
	display_name = T(702707855033, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Adv Carbon Fence"),
	description = T(854010311189, --[[ModItemLootDef ScavengeGenericDebris description]] "A low advanced carbon barrier that diverts most animals from their path."),
	menu_display_name = T(823083258013, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Adv Carbon Fence"),
	BuildMenuIcon = "Trade/AdvCarbonFence.png",
	BuildMenuPos = 7,
	display_name_pl = T(442155105818, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Adv Carbon Fence"),
	display_name_short = T(368920239292, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Fence"),
	labels = {
		"Structures",
	},
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 12000,
	}),
	construction_points = 2500,
	NextTemplate = {
		"Gate_Wood",
	},
	Health = 1500000,
	MaxHealth = 1500000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
	use_upgrade_dummy = false,
	upgrade_label = "Fence",
	RoomPlacement = "outdoors",
	max_depth = 350,
	max_elevate = 350,
	IgnoredObstacles = {
		"FortificationElement",
		"FortificationColumnElement",
	},
	MinConstructionSkill = 3,
	can_be_moved = false,
	fx_actor_base_class = "Fence",
	apply_res_reqs = false,
	CustomMaterial = "Metal-Construction",
	range_tags = {
		"combat",
	},
	attack_attraction = 0,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	material = "Carbon",
	column_freq = 3,
	column_priority = 3,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
}

