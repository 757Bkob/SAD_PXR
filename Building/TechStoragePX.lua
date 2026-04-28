UndefineClass('TechStoragePX')
DefineClass.TechStoragePX = {
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
	display_name = T(386083635397, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Large Tech Storage"),
	description = T(101689495843, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides large storage space for tech items. Cannot be stolen. Has increased durability."),
	menu_display_name = T(767463424105, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Large"),
	menu_description = T(482329356283, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "Locked Galactic Tech Storage. Increased storage capacity. Contents cannot be stolen."),
	BuildMenuIcon = "General/TechStorage01.png",
	BuildMenuPos = 2,
	display_name_pl = T(243874621164, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Large"),
	display_name_short = T(654351134936, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Large"),
	entity = "PXTechCrate01",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 50000,
	}),
	construction_points = 30000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 10000,
	}),
	Health = 1000000,
	MaxHealth = 1000000,
	lock_block_box = box(-1800, -900, 0, 1800, 900, 1750),
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
	stack_count = 300,
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

