UndefineClass('CarbonGenerator')
DefineClass.CarbonGenerator = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	BuildMenuCategory = "sub_GalacticPowerPX",
	display_name = T(833924322503, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Stirling Generator"),
	description = T(932189388885, --[[ModItemLootDef ScavengeGenericDebris description]] "Generates a small amount of <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100> without any fuel requirement 24 hours a day. \n\nAn efficient supply of electricity to help off-set solar panels and wind turbines that do not produce during certain times."),
	menu_display_name = T(550671771879, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Stirling Generator"),
	BuildMenuIcon = "General/Gen3.png",
	BuildMenuPos = 9,
	display_name_pl = T(174489296852, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Stirling Generator"),
	entity = "CarbonGeneratorPX",
	labels = {
		"PowerSources",
		"BerserkTargets",
	},
	update_interval = 10000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 50000,
		ScrapElectronics = 5000,
	}),
	construction_points = 40000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 10000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 30000,
		ScrapElectronics = 3000,
	}),
	lock_block_box = box(-300, -300, 0, 300, 300, 700),
	MinConstructionSkill = 4,
	access_range = 2400,
	CustomMaterial = "Metal",
	realtime_working_anim = true,
	attack_attraction = 20,
	affected_by_disasters = set( "SolarFlare" ),
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	MaxTimeToMalfunction = 38400000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerGenerator = true,
	Production = 50000,
	PowerConsumption = 30000,
	HasSmartConnection = true,
	interfaces = {
		"",
	},
	off_when_idle = true,
	res_consumed = "CarbonNanotubes",
	res_stored = -1000,
	res_operate_time = -40000,
	res_request_threshold = 0,
	res_start_fueled = true,
}

