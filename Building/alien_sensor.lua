UndefineClass('alien_sensor')
DefineClass.alien_sensor = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent", "ProximitySwitchComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	Prerequisites = {
		PlaceObj('CheckTech', {
			Tech = "AlienSensor",
		}),
	},
	BuildMenuCategory = "sub_DefenseDevices",
	display_name = T(606057404456, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Alien-Infused Motion sensor"),
	description = T(342027716413, --[[ModItemLootDef ScavengeGenericDebris description]] "Activates when there are hostile animals in range.\n<opt(SensorDescription)>"),
	BuildMenuIcon = "UI/Icons/Build Menu/infrared_detector",
	BuildMenuPos = 90,
	display_name_pl = T(170591190349, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Alien-Infused Motion sensors"),
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
	StatusTextWorking = T(792301125251, --[[ModItemLootDef ScavengeGenericDebris StatusTextWorking]] "<negative>Detecting threats</negative>"),
	StatusTextNotWorking = T(537466444033, --[[ModItemLootDef ScavengeGenericDebris StatusTextNotWorking]] "<positive>No threats are detected</negative>"),
	StateIndicatorAttachId = "SignalLamp",
	NonWorkingIndState = "idle",
	ActiveIndState = "working_Special",
	InactiveIndState = "working",
	MinTimeToMalfunction = 96000000,
	MaxTimeToMalfunction = 192000000,
	MinMalfunctionDamage = 5,
	MaxMalfunctionDamage = 10,
	IsPowerSwitch = true,
	HasSecondSmartConnection = true,
	IsPowerConsumer = true,
	PowerConsumption = 6000,
	HasSmartConnection = true,
	ProximitySwitchRange = 90000,
	ProximitySwitchFilter = function (self, obj)
		return obj:CanMove() and Human.IsAttackTarget(self, obj) -- hacky, but it's the same code
	end,
	ProximitySwitchColor = 4293186370,
	ProximityInterception = false,
}

