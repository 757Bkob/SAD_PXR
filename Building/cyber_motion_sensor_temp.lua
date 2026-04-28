UndefineClass('cyber_motion_sensor_temp')
DefineClass.cyber_motion_sensor_temp = {
	__parents = { "Building", "MalfunctionOverTimeComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	Prerequisites = {
		PlaceObj('CheckTech', {
			Tech = "CyberSensor",
		}),
	},
	BuildMenuCategory = "sub_DefenseDevices",
	display_name = T(935842762688, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Fauna Detection Tower"),
	description = T(939503605659, --[[ModItemLootDef ScavengeGenericDebris description]] "Signal hijacking tower; enabling us to not only detect if an attack is imminent, but we can also try and change the temperament of the animals that are gathering!"),
	menu_display_name = T(770422888529, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Cyber Com Tower"),
	menu_description = T(274227230921, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "This tower will let us tap into the <em>faunas intranet signal network</em>, and detect if there is a buildup of biomass. Meaning we can tell when an attack is nearly here!\nWith enough of these, we could even force the attack to start on our terms!"),
	BuildMenuIcon = "Mod/ucCehPy/General/PXSensorTower.png",
	BuildMenuPos = 90,
	display_name_short = T(992328866609, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Cyber Com Tower"),
	entity = "PXSensorTower",
	labels = {
		"SolarFlareShieldedTargets",
		"CyberComTower",
	},
	update_interval = 3000,
	construction_cost = PlaceObj('ConstructionCost', {
		CyberProcessor = 1000,
		Metal = 10000,
	}),
	construction_points = 15000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		ScrapMetal = 10000,
	}),
	RoomPlacement = "outdoors",
	lock_block_box = box(-300, -600, 0, 300, 600, 3850),
	SkirtSize = 0,
	EntityHeight = 3900,
	progress = 500000,
	range_tags = {
		"sensor",
		"combat",
	},
	BuildStartAnimation = "standing_Repair_Weld_Start",
	BuildIdleAnimations = {
		"standing_Repair_Weld_Idle",
	},
	BuildEndAnimation = "standing_Repair_Weld_End",
	BuildActivityTool = "WeldingTool",
	realtime_working_anim = true,
	affected_by_disasters = set( "SolarFlare", "Thunderstorm" ),
	enable_overlay_on_placement = {
		RangeOverlay = true,
		RoomsOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	TurnOnDelay = 0,
	StatusTextWorking = T(435160793445, --[[ModItemLootDef ScavengeGenericDebris StatusTextWorking]] "<negative>Detecting threats</negative>"),
	StatusTextNotWorking = T(680984201551, --[[ModItemLootDef ScavengeGenericDebris StatusTextNotWorking]] "<positive>No threats are detected</negative>"),
	StateIndicatorAttachId = "SignalLamp",
	NonWorkingIndState = "idle",
	ActiveIndState = "working_Special",
	InactiveIndState = "working",
	MinTimeToMalfunction = 38400000,
	MaxTimeToMalfunction = 96000000,
	PowerConsumption = 6000,
	ProximitySwitchRange = 70000,
	ProximitySwitchFilter = function (self, obj)
		return obj:CanMove() and Human.IsAttackTarget(self, obj) -- hacky, but it's the same code
	end,
	ProximitySwitchColor = 4293149398,
	ProximityInterception = false,
}

