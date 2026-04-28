UndefineClass('GalacticLaserBarrierWall')
DefineClass.GalacticLaserBarrierWall = {
	__parents = { "ForceFieldWallPiece", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "ForceFieldWallPiece",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "TradeFortifications",
		}),
	},
	BuildMenuCategory = "sub_GalacticFortificationsWallsPX",
	display_name = T(886663238354, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Laser Barrier"),
	description = T(584459522630, --[[ModItemLootDef ScavengeGenericDebris description]] "An impenetrable barrier powered by electricity that consumes more energy with each successive attack. When not supplied with electricity, the barrier is deactivated and provides unrestricted access. Galactic technology had advanced the standard force field barrier to another level of design by making it drain less energy when taking damage, more durable posts and armored infastructure. "),
	menu_display_name = T(923795210753, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Galactic Laser Barrier"),
	BuildMenuIcon = "Trade/GalacticFortification.png",
	BuildMenuPos = 40,
	display_name_pl = T(379004587909, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Laser Barrier"),
	display_name_short = T(869853165545, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Galactic Laser Barrier"),
	labels = {
		"Structures",
	},
	update_interval = 10000,
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 10000,
		Metal = 10000,
	}),
	construction_points = 4000,
	NextTemplate = {
		"Gate_EM",
	},
	can_work_deconstructing = true,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 10000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	damage_reduction = {
		blunt = 20,
		energy = 20,
		gas = 20,
		pacify = 20,
		piercing = 20,
	},
	use_upgrade_dummy = false,
	upgrade_label = "Wall",
	RoomPlacement = "outdoors",
	max_depth = 350,
	IgnoredObstacles = {
		"FortificationElement",
		"FortificationColumnElement",
	},
	MinConstructionSkill = 5,
	can_be_moved = false,
	apply_res_reqs = false,
	CustomMaterial = "Metal-Construction",
	range_tags = {
		"combat",
	},
	attack_attraction = 0,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	material = "EM",
	base_material = "",
	column_freq = 5,
	column_priority = 10000,
	PowerComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 1000,
	HasSmartConnection = true,
	CableClass = "EM",
}

