UndefineClass('ProjectX_start')
DefineClass.ProjectX_start = {
	__parents = { "MilitaryWonderBuilding", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "MilitaryWonderBuilding",
	Prerequisites = {
		PlaceObj('CheckTech', {
			Tech = "xr_start",
		}),
	},
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "xr_start",
		}),
	},
	BuildMenuCategory = "Science",
	display_name = T(509337128918, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Signal Relay"),
	description = T(885724357379, --[[ModItemLootDef ScavengeGenericDebris description]] "PX-003 shall no longer be our gatekeeper to the universe! We can now be a truly independent colony by strengthening our signal to reach the Galactican Empire. \n<color red>This will attract attention, both from the planets denizens and the factions above us.</color>."),
	BuildMenuIcon = "UI/Icons/Build Menu/military_wonder",
	BuildMenuPos = 120,
	display_name_pl = T(638447700314, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Signal Relay"),
	labels = {
		"x_ansible",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 10000,
		CarbonNanotubes = 500000,
		Concrete = 500000,
		ScrapElectronics = 50000,
	}),
	construction_points = 400000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 100000,
		Wood = 50000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CPUCore = 2000,
		PowerCell = 1000,
		ScrapMetal = 100000,
		Wood = 25000,
	}),
	Health = 1000000,
	MaxHealth = 1000000,
	can_be_copied = false,
	RoomPlacement = "outdoors",
	CanPlaceInShelter = false,
	lock_flags = 0,
	SkirtSize = 68,
	EntityHeight = 4826,
	snap_to_terrain = false,
	forbid_clip_plane = true,
	ConstructIgnore = set( "Flooring" ),
	max_count = 5,
	CustomMaterial = "Metal",
	progress = 3000000,
	BuildStartAnimation = "standing_Repair_Weld_Start",
	BuildIdleAnimations = {
		"standing_Repair_Weld_Idle",
	},
	BuildEndAnimation = "standing_Repair_Weld_End",
	BuildActivityTool = "WeldingTool",
	affected_by_disasters = set(),
	PowerComponent = true,
	can_change_ownership = false,
	IsPowerConsumer = true,
	PowerConsumption = 500000,
}

