UndefineClass('GalacticCeilingLampOrange')
DefineClass.GalacticCeilingLampOrange = {
	__parents = { "Building", "InvulnerableComponent", "LightingComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",

	flags = { efAttackable = false, gofDamageable = false, },

	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands_High",
	load_anim_hands = "standing_PickUp_Hands_High",
	BuildMenuCategory = "sub_LightOrangePX",
	display_name = T(161064033348, --[[ModItemBuildingCompositeDef GalacticCeilingLampOrange display_name]] "Galactic Ceiling Light"),
	description = T(341863663558, --[[ModItemBuildingCompositeDef GalacticCeilingLampOrange description]] "Provides light while working. Requires a ceiling. Due to an advancement in technology these light fixtures drain less electricity and have practically zero chance of malfunctioning. Has light indicators, enhanced range and color options."),
	BuildMenuIcon = "Trade/GalaxyCeilingLightOrange.png",
	BuildMenuPos = 2001,
	display_name_pl = T(459569003178, --[[ModItemBuildingCompositeDef GalacticCeilingLampOrange display_name_pl]] "Galactic Ceiling Light"),
	entity = "CeilingLamp_Electric",
	update_interval = 5000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 3000,
	}),
	construction_points = 4000,
	custom_constr_rules = {
		PlaceObj('ConstructionObjectSnapToCeiling', nil),
	},
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 3000,
	}),
	upgrade_label = "PX_GalCeilLamp",
	lock_block_box = box(-300, -300, -700, 300, 300, 0),
	working_during_construction = true,
	access_range = 1000,
	attack_attraction = 1,
	affected_by_disasters = set(),
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	InvulnerableComponent = true,
	LightingComponent = true,
	PowerComponent = true,
	LightRadius = 8000,
	LightFov = 10800,
	LightDirection = point(0, 0, -4096),
	LightShowArea = true,
	IlluminateObjects = function (self)
		if self.active then self:IlluminateObjectsInRadius() end
	end,
	IsPowerConsumer = true,
	PowerConsumption = 300,
	HasSmartConnection = true,
}

