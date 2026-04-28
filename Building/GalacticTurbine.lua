UndefineClass('GalacticTurbine')
DefineClass.GalacticTurbine = {
	__parents = { "WindTurbineBuilding", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "WindTurbineBuilding",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	BuildMenuCategory = "sub_GalacticPowerPX",
	display_name = T(908755362646, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Turbine"),
	description = T(325677241256, --[[ModItemLootDef ScavengeGenericDebris description]] "Generates <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100> depending on wind speed. Has an increased production and efficiency than the standard turbines used across the Galaxy."),
	menu_display_name = T(894851151182, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Galactic Turbine"),
	BuildMenuIcon = "General/CarbonWindTurbines.png",
	BuildMenuPos = 7,
	display_name_pl = T(511748385435, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Wind Turbine"),
	entity = "WindTurbineCarbone",
	labels = {
		"PowerSources",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 75000,
		ScrapElectronics = 3000,
	}),
	construction_points = 40000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 20000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 25000,
		ScrapElectronics = 1000,
	}),
	Health = 150000,
	MaxHealth = 150000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-900, -900, 0, 900, 900, 8400),
	MinConstructionSkill = 6,
	terrain_change = "soil",
	soil_border = 600,
	soil_form = "circle",
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "Plastic",
	realtime_working_anim = true,
	attack_attraction = 20,
	affected_by_disasters = set(),
	composite_part_names = {
		"Base",
		"Propeller",
	},
	composite_part_groups = {
		"WindTurbine_Carbon",
	},
	composite_part_parent = {
		Propeller = "Base",
	},
	composite_part_spots = {
		Propeller = "Propeller",
	},
	MinWindSpeed = 0,
	FullWindSpeed = 60,
	RotationSounds = {
		PlaceObj('SoundAtSpeed', {
			'Name', "windturbinecarbon_rotationRPM3",
			'Value', 800,
		}),
		PlaceObj('SoundAtSpeed', {
			'Name', "windturbinecarbon_rotationRPM2",
			'Value', 500,
		}),
		PlaceObj('SoundAtSpeed', {
			'Name', "windturbinecarbon_rotationRPM1",
		}),
	},
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	MinTimeToMalfunction = 28800000,
	MaxTimeToMalfunction = 76800000,
	MinMalfunctionDamage = 20,
	MaxMalfunctionDamage = 40,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerGenerator = true,
	Production = 200000,
}

