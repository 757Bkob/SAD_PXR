UndefineClass('cyber_sensor')
DefineClass.cyber_sensor = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent", "ProximitySwitchComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	Prerequisites = {
		PlaceObj('CheckTech', {
			Tech = "CyberSensor",
		}),
	},
	BuildMenuCategory = "sub_DefenseDevices",
	display_name = T(427620548318, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Cyber-Infused Motion sensor"),
	description = T(446142274524, --[[ModItemLootDef ScavengeGenericDebris description]] "Activates when there are hostile animals in range.\n<opt(SensorDescription)>"),
	BuildMenuIcon = "UI/Icons/Build Menu/infrared_detector",
	BuildMenuPos = 90,
	display_name_pl = T(437180714311, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Cyber-Infused Motion sensors"),
	entity = "MotionSensor",
	labels = {
		"SolarFlareShieldedTargets",
	},
	update_interval = 3000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
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
	PowerComponent = true,
	ProximitySwitchComponent = true,
	TurnOnDelay = 0,
	StatusTextWorking = T(302751981411, --[[ModItemLootDef ScavengeGenericDebris StatusTextWorking]] "<negative>Detecting threats</negative>"),
	StatusTextNotWorking = T(578362301901, --[[ModItemLootDef ScavengeGenericDebris StatusTextNotWorking]] "<positive>No threats are detected</negative>"),
	StateIndicatorAttachId = "SignalLamp",
	NonWorkingIndState = "idle",
	ActiveIndState = "working_Special",
	InactiveIndState = "working",
	MinTimeToMalfunction = 9600000,
	MaxTimeToMalfunction = 19200000,
	MinMalfunctionDamage = 35,
	MaxMalfunctionDamage = 65,
	IsPowerSwitch = true,
	HasSecondSmartConnection = true,
	IsPowerConsumer = true,
	PowerConsumption = 6000,
	HasSmartConnection = true,
	ProximitySwitchRange = 110000,
	ProximitySwitchFilter = function (self, obj)
		return obj:CanMove() and Human.IsAttackTarget(self, obj) -- hacky, but it's the same code
	end,
	ProximitySwitchColor = 4293186370,
	ProximityInterception = false,
}

