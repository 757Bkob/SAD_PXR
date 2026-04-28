UndefineClass('AlienTurbines')
DefineClass.AlienTurbines = {
	__parents = { "WindTurbineBuilding", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "WindTurbineBuilding",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "AlienTurbines",
		}),
	},
	BuildMenuCategory = "sub_AlienPowerPX",
	display_name = T(199974579565, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Alien Wind Turbine"),
	description = T(620920578628, --[[ModItemLootDef ScavengeGenericDebris description]] "Generates <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100> depending on wind speed. Has been electronically hacked to bypass software's programming and cyber technology added that enhances the turbines energy production. Alien technology then used to add an extra layer of durability to all weather conditions, increased production and efficiency. Does not malfunction at all and always produces electricity regardless."),
	menu_display_name = T(805287392294, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Alien Wind Turbine"),
	menu_description = T(879133482351, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "Generates <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100> depending on wind speed. Has been electronically hacked to bypass software's programming and cyber technology added that enhances the turbines energy production. Alien technology then used to add an extra layer of durability to all weather conditions, increased production and efficiency. Does not malfunction at all and always produces electricity regardless."),
	BuildMenuIcon = "CriminalActivity/AlienTurbine.png",
	BuildMenuPos = 7,
	display_name_pl = T(994718827983, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Advanced Alien Wind Turbine"),
	entity = "WindTurbineCarbone",
	labels = {
		"PowerSources",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		AlienCore = 1000,
		CarbonNanotubes = 80000,
		CyberProcessor = 1000,
		HackingDevice = 1000,
	}),
	construction_points = 40000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 40000,
	}),
	Health = 1500000,
	MaxHealth = 1500000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
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
	MinWindSpeed = 20,
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
	MinTimeToMalfunction = 105600000,
	MaxTimeToMalfunction = 211200000,
	MinMalfunctionDamage = 20,
	MaxMalfunctionDamage = 40,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerGenerator = true,
	Production = 1000000,
}

