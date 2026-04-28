UndefineClass('alien_motion_sensor_temp')
DefineClass.alien_motion_sensor_temp = {
	__parents = { "Building" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	Prerequisites = {
		PlaceObj('CheckTech', {
			Tech = "AlienSensor",
		}),
	},
	BuildMenuCategory = "sub_DefenseDevices",
	display_name = T(634710997141, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Fauna Selection Tower"),
	description = T(409042361539, --[[ModItemLootDef ScavengeGenericDebris description]] "All these organs next to some special broadcast equipment... I bet we could try and lure a specific species to be in the next attack group with these!"),
	cursor_hint = "",
	menu_display_name = T(709079682173, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Alien Com Tower"),
	menu_description = T(692068368758, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "Alien biology combined with broadcast equipment! This will let us send communications to the <em>faunas intranet signal network</em>. The more we build, the better chance we have to successfully influence the next attack!"),
	BuildMenuIcon = "Mod/ucCehPy/General/ObeliskDecorPX.png",
	BuildMenuPos = 90,
	display_name_short = T(355941365403, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Alien Com Tower"),
	entity = "PXObeliskDec",
	labels = {
		"SolarFlareShieldedTargets",
		"AlienComTower",
	},
	update_interval = 3000,
	construction_cost = PlaceObj('ConstructionCost', {
		AlienProcessor = 1000,
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
	TurnOnDelay = 0,
	StatusTextWorking = T(752471945174, --[[ModItemLootDef ScavengeGenericDebris StatusTextWorking]] "<negative>Detecting threats</negative>"),
	StatusTextNotWorking = T(255582587201, --[[ModItemLootDef ScavengeGenericDebris StatusTextNotWorking]] "<positive>No threats are detected</negative>"),
	StateIndicatorAttachId = "PXObeliskDec",
	NonWorkingIndState = "idle",
	ActiveIndState = "working_Special",
	InactiveIndState = "working",
	MinTimeToMalfunction = 96000000000,
	MaxTimeToMalfunction = 96000000000,
	MinMalfunctionDamage = 0,
	MaxMalfunctionDamage = 0,
	HasSecondSmartConnection = true,
	PowerConsumption = 6000,
	ProximitySwitchRange = 130000,
	ProximitySwitchFilter = function (self, obj)
		return obj:CanMove() and Human.IsAttackTarget(self, obj) -- hacky, but it's the same code
	end,
	ProximitySwitchColor = 4293149398,
	ProximityInterception = false,
}

