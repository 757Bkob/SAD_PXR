UndefineClass('GalacticAnimalBedS')
DefineClass.GalacticAnimalBedS = {
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
	display_name = T(498063460917, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Animal spot"),
	description = T(182929164543, --[[ModItemLootDef ScavengeGenericDebris description]] "Dedicated sleeping spot for small and medium animals. Sleeping in it makes the animal more happy. Increased durability and cannot be a target of weather conditions such as lightning."),
	BuildMenuIcon = "General/GalacticAnimalBedSmall.png",
	BuildMenuPos = 10,
	display_name_pl = T(602909724329, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Animal spots"),
	entity = "BedAnimal",
	labels = {
		"AnimalSleepingSpot",
	},
	construction_cost = PlaceObj('ConstructionCost', {
		Hay = 20000,
	}),
	construction_points = 5000,
	Health = 1000000,
	MaxHealth = 1000000,
	ConstructHelper = "BedAnimal_Placing",
	RoomPlacement = "outdoors",
	lock_block_box = box(-1800, -1800, 0, 600, 600, 0),
	lock_pass_box = box(-1800, -1800, 0, 600, 600, 700),
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
	ownership_class = "AnimalBedSmall",
	ChangeOwnerIcon = "UI/Icons/Infopanels/animal_change_owner",
	ChangeOwnerRolloverText = T(961039390316, --[[ModItemLootDef ScavengeGenericDebris ChangeOwnerRolloverText]] "Decide which animal is allowed to sleep on this spot."),
	OwnerLabel = "TamedAnimals",
	Filter = function (obj)
		local size = obj.BodySize
		return (size == "small") or (size == "medium")
	end,
}

