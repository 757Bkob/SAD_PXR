UndefineClass('GalacticAnimalFeeder')
DefineClass.GalacticAnimalFeeder = {
	__parents = { "AnimalFeeder", "OwnedComponent", "PowerComponent", "StorageDepotComponent", "VisualStorageComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "AnimalFeeder",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticAnimalTaming",
		}),
	},
	unload_anim_handsclose = "standing_DropDown_HandsClose_Low",
	load_anim_handsclose = "standing_PickUp_HandsClose_Low",
	TreatStorageAsDevice = true,
	StorageTargetTemperature = -18000,
	TempChangeRateOn = 4000,
	TempChangeRateOff = 3000,
	show_amount_UI = true,
	BuildMenuCategory = "sub_RanchingPX",
	display_name = T(614648275376, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Animal Feeder"),
	description = T(349368920238, --[[ModItemLootDef ScavengeGenericDebris description]] "A feeding rack for domesticated animals. The food inside is kept as a freezing temperature to prevent decay of food over time, allowing resources to last longer."),
	BuildMenuIcon = "General/GalacticFeeder.png",
	BuildMenuPos = 3,
	display_name_pl = T(215171320730, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Metal animal feeders"),
	display_name_short = T(520954751541, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Animal feeder"),
	entity = "AnimalFeeder_Metal",
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 30000,
		ScrapElectronics = 2000,
	}),
	construction_points = 5000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 30000,
	}),
	Health = 1000000,
	MaxHealth = 1000000,
	upgrade_label = "AnimalFeeder",
	lock_block_box = box(-450, -1650, 0, 450, 450, 350),
	orient_to_terrain = true,
	access_range = 2400,
	CustomMaterial = "Metal",
	attack_attraction = 5,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	PowerComponent = true,
	StorageDepotComponent = true,
	VisualStorageComponent = true,
	IsPowerConsumer = true,
	PowerConsumption = 5000,
	HasSmartConnection = true,
	stack_count = 3,
	accepted_res = {
		"FoodAnimalCarnivore",
		"FoodAnimalHerbivore",
		"Slop",
	},
	show_grouped_stacks = false,
	distribute_allowed_res = false,
	placement_spots = {
		"Resourceleft",
		"Resourcemiddle",
		"Resourceright",
	},
}

