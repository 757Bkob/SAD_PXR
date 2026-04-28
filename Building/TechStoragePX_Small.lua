UndefineClass('TechStoragePX_Small')
DefineClass.TechStoragePX_Small = {
	__parents = { "Building", "OwnedComponent", "ResourceDismantlingComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticStorage",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	ClosedStorage = true,
	can_steal_from = false,
	BuildMenuCategory = "sub_StoragePX_Tech",
	display_name = T(401951006265, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Small Tech Storage"),
	description = T(660087612072, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides small storage space for tech items. Cannot be stolen. Has increased durability."),
	menu_display_name = T(117780928056, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Small"),
	menu_description = T(496645366173, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "Locked Galactic Tech Storage. Increased storage capacity. Contents cannot be stolen."),
	BuildMenuIcon = "General/Storage3.png",
	BuildMenuPos = 1,
	display_name_pl = T(682036847843, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Small"),
	display_name_short = T(244241996334, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Small"),
	entity = "PXCrate01",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 15000,
	}),
	construction_points = 30000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 10000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	lock_block_box = box(-600, -600, 0, 600, 600, 1050),
	apply_res_reqs = false,
	access_range = 2400,
	attack_attraction = 25,
	AttackAttractionGetter = function (self)
		if not self.res_amounts:IsEmpty() then
			return self.attack_attraction * 2
		else
			return self.attack_attraction
		end
	end,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	ResourceDismantlingComponent = true,
	StorageDepotComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	stack_count = 100,
	accepted_res = {
		"AlienCore",
		"AlienElectronics",
		"AlienProcessor",
		"AlienCrystal",
		"ChipDevice",
		"CyberCore",
		"CyberCrystal",
		"CyberProcessor",
		"HackingDevice",
		"CPUCore",
		"MechCore",
		"PowerCell",
		"ScrapElectronics",
		"MatterGenerator",
		"RepairKitPX",
		"AICore",
	},
}

