UndefineClass('GalacticAnimalBedL')
DefineClass.GalacticAnimalBedL = {
	__parents = { "Building", "OwnedComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticAnimalTaming",
		}),
	},
	ForwardDir = 5400,
	BuildMenuCategory = "sub_RanchingPX",
	display_name = T(204831321139, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Large animal spot"),
	description = T(742105470484, --[[ModItemLootDef ScavengeGenericDebris description]] "Dedicated sleeping spot for small, medium and large animals. Sleeping in it makes the animal more happy. Increased durability and cannot be a target of weather conditions such as lightning."),
	BuildMenuIcon = "General/GalacticAnimalBedLarge.png",
	BuildMenuPos = 20,
	display_name_pl = T(830329257466, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Large animal spots"),
	entity = "BedAnimal_Large",
	labels = {
		"AnimalSleepingSpot",
	},
	construction_cost = PlaceObj('ConstructionCost', {
		Hay = 40000,
	}),
	construction_points = 5000,
	Health = 1000000,
	MaxHealth = 1000000,
	ConstructHelper = "BedAnimal_Large_Placing",
	RoomPlacement = "outdoors",
	lock_block_box = box(-1800, -1800, 0, 1800, 1800, 0),
	lock_pass_box = box(-1800, -1800, 0, 1800, 1800, 3500),
	ConstructIgnore = set( "Flooring" ),
	MovingAs = "entity",
	fx_actor_base_class = "AnimalBed",
	access_range = 2400,
	CustomMaterial = "BedSoil",
	attack_attraction = 1,
	affected_by_disasters = set(),
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	ownership_class = "AnimalBedLarge",
	ChangeOwnerIcon = "UI/Icons/Infopanels/animal_change_owner",
	ChangeOwnerRolloverText = T(527258650453, --[[ModItemLootDef ScavengeGenericDebris ChangeOwnerRolloverText]] "Decide which animal is allowed to sleep on this spot."),
	OwnerLabel = "TamedAnimals",
}

