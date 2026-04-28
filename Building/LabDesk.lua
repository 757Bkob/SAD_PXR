UndefineClass('LabDesk')
DefineClass.LabDesk = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "OwnedComponent", "PowerComponent", "ProductionDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "LabDesk",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	BuildMenuCategory = "sub_TerminalsPX",
	display_name = T(343266196224, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Dissectory"),
	description = T(867629637729, --[[ModItemLootDef ScavengeGenericDebris description]] "Discover new recipes, materials and discoveries by researching bodily organisms."),
	menu_display_name = T(125814379646, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Dissectory"),
	menu_description = T(635598676515, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "Discover new recipes, materials and discoveries by researching bodily organisms."),
	BuildMenuIcon = "Biologist/LabDesk.png",
	BuildMenuPos = 8,
	display_name_pl = T(410755265779, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Dissectory"),
	entity = "PXBiologyCNS",
	labels = {
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 5000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 2000,
		Metal = 30000,
		ScrapElectronics = 15000,
	}),
	construction_points = 20000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 4000,
	}),
	lock_block_box = box(-600, -300, 0, 600, 300, 1750),
	apply_res_reqs = false,
	access_range = 2400,
	attack_attraction = 20,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	OwnedComponent = true,
	PowerComponent = true,
	ProductionDeviceComponent = true,
	LightRadius = 2000,
	MinTimeToMalfunction = 9600000,
	MaxTimeToMalfunction = 28800000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 5000,
	HasSmartConnection = true,
	interfaces = {
		"Biology",
	},
	off_when_idle = true,
	ProductionDeviceSkipsStateChange = true,
	stack_count = 10,
	accepted_res = {
		"Organs",
	},
}

