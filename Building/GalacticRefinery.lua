UndefineClass('GalacticRefinery')
DefineClass.GalacticRefinery = {
	__parents = { "Building", "OwnedComponent", "PowerComponent", "ProductionDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticRefinery",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands_High",
	load_anim_hands = "standing_PickUp_Hands_High",
	BuildMenuCategory = "sub_GalacticDevicesPX",
	display_name = T(353553507353, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Refinery"),
	description = T(546916004142, --[[ModItemLootDef ScavengeGenericDebris description]] "Used for refining certain resources into other required materials."),
	menu_display_name = T(975094153669, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "GalacticRefinery"),
	BuildMenuIcon = "General/RefineryGalactic.png",
	BuildMenuPos = 13,
	display_name_pl = T(945816564703, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Refinery"),
	entity = "PXRefinary1",
	labels = {
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 5000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 30000,
		ScrapElectronics = 2000,
		Wood = 30000,
	}),
	construction_points = 3000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 2000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 20000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	lock_block_box = box(-800, -2000, 0, 800, 2000, 1400),
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "ScrapMetal",
	attack_attraction = 5,
	affected_by_disasters = set( "SolarFlare", "Thunderstorm" ),
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	PowerComponent = true,
	ProductionDeviceComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 25000,
	HasSmartConnection = true,
	interfaces = {
		"RefineryInterface",
	},
	initial_recipe = "RefinaryFuel",
	off_when_idle = true,
	ProductionDeviceSkipsStateChange = true,
}

