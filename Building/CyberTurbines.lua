UndefineClass('CyberTurbines')
DefineClass.CyberTurbines = {
	__parents = { "WindTurbineBuilding", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "WindTurbineBuilding",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "CyberTurbines",
		}),
	},
	BuildMenuCategory = "sub_CyberPowerPX",
	display_name = T(407229588606, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Cyber Wind Turbine"),
	description = T(602314245198, --[[ModItemLootDef ScavengeGenericDebris description]] "Generates <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100> depending on wind speed. Has been electronically hacked to bypass software's programming and cyber technology added that enhances the turbines energy production. Malfunctions less and always produces electricity, has an increased production."),
	menu_display_name = T(376988845520, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Cyber Wind Turbine"),
	menu_description = T(223149991478, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "Generates <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100> depending on wind speed. Has been electronically hacked to bypass software's programming and cyber technology added that enhances the turbines energy production. Malfunctions less and always produces electricity, has an increased production."),
	BuildMenuIcon = "CriminalActivity/CyberTurbine.png",
	BuildMenuPos = 7,
	display_name_pl = T(263008706024, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Cyber Wind Turbines"),
	entity = "WindTurbineCarbone",
	labels = {
		"PowerSources",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 40000,
		CyberCore = 1000,
		HackingDevice = 1000,
	}),
	construction_points = 40000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 20000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 25000,
		ScrapElectronics = 30000,
	}),
	Health = 300000,
	MaxHealth = 300000,
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
	MinWindSpeed = 10,
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
	MinTimeToMalfunction = 38400000,
	MaxTimeToMalfunction = 96000000,
	MinMalfunctionDamage = 20,
	MaxMalfunctionDamage = 40,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerGenerator = true,
	Production = 400000,
}

