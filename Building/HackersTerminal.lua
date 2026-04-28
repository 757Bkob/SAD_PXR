UndefineClass('HackersTerminal')
DefineClass.HackersTerminal = {
	__parents = { "Building", "OwnedComponent", "PowerComponent", "ProductionDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "HackingTerminal",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	BuildMenuCategory = "sub_TerminalsPX",
	display_name = T(406722529671, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Hackers Terminal"),
	description = T(497389882295, --[[ModItemLootDef ScavengeGenericDebris description]] "Produce blueprints by hacking into government software and retrieving confidential files to research."),
	menu_display_name = T(642895792129, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Hackers Terminal"),
	BuildMenuIcon = "CriminalActivity/HackingTerminal.png",
	BuildMenuPos = 20,
	display_name_pl = T(188211552025, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Hackers Terminal"),
	display_name_short = T(193568058486, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Hackers Terminal"),
	entity = "PXHackingCNS",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		HackingDevice = 1000,
		Metal = 30000,
		ScrapElectronics = 10000,
	}),
	construction_points = 20000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 4000,
	}),
	can_be_copied = false,
	lock_block_box = box(-600, -300, 0, 600, 300, 1750),
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "Metal-Construction",
	attack_attraction = 5,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	PowerComponent = true,
	ProductionDeviceComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 40000,
	HasSmartConnection = true,
	interfaces = {
		"Hacking",
	},
	off_when_idle = true,
	override_material_during_production = false,
	ProductionDeviceSkipsStateChange = true,
}

