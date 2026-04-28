UndefineClass('GalacticFabricator')
DefineClass.GalacticFabricator = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "OwnedComponent", "PowerComponent", "ProductionDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPrinter",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	BuildMenuCategory = "sub_GalacticDevicesPX",
	display_name = T(854039547404, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Fabricator"),
	description = T(248287721917, --[[ModItemLootDef ScavengeGenericDebris description]] "Most commonly found in Galactic Military Outposts, these devices are capable of producing many much required resources, materials and even edibles. The technology is very expensive and has been restricted for Galactic Authorities use only due to how limited the supply is. Takes less resources and time to create items than the standard printers and has a higher durability, however consumes a large amount of electricity to use."),
	menu_display_name = T(706014864055, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Galactic Fabricator"),
	menu_description = T(990397020235, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "Most commonly found in Galactic Military Outposts, these devices are capable of producing many much required resources, materials and even edibles. The technology is very expensive and has been restricted for Galactic Authorities use only due to how limited the supply is. Takes less resources and time to create items than the standard printers and has a higher durability, however consumes a large amount of electricity to use."),
	BuildMenuIcon = "General/FabricatorPX.png",
	BuildMenuPos = 15,
	display_name_pl = T(163556429752, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Fabricator"),
	entity = "PXFabricatorGalac",
	labels = {
		"CPUCoreDevice",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 5000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 10000,
		CarbonNanotubes = 200000,
		MatterGenerator = 3000,
		Metal = 200000,
	}),
	construction_points = 300000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 100000,
	}),
	Health = 1000000,
	MaxHealth = 1000000,
	damage_reduction = {
		blunt = 50,
		energy = 50,
		gas = 50,
		pacify = 50,
		piercing = 50,
	},
	lock_block_box = box(-1800, -900, 0, 1800, 900, 4550),
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "Metal",
	attack_attraction = 20,
	affected_by_disasters = set( "SolarFlare" ),
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	OwnedComponent = true,
	PowerComponent = true,
	ProductionDeviceComponent = true,
	MaxTimeToMalfunction = 48000000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 250000,
	HasSmartConnection = true,
	interfaces = {
		"GalacticPrinter",
	},
	off_when_idle = true,
}

