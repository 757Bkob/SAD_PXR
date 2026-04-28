UndefineClass('MedicineStoragePX_Large')
DefineClass.MedicineStoragePX_Large = {
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
	BuildMenuCategory = "sub_StoragePX_Medical",
	display_name = T(451028464228, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Large Medicine Storage"),
	description = T(706831948022, --[[ModItemLootDef ScavengeGenericDebris description]] "Stores a large amount of <color TextEmphasis>medicine</color> in a locked cabinet preventing them from being stolen from. Has increased durability."),
	menu_display_name = T(514557675091, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Large"),
	BuildMenuIcon = "General/MedicBoxLarge.png",
	BuildMenuPos = 2,
	display_name_pl = T(811664103275, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Large"),
	display_name_short = T(726948791806, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Large"),
	entity = "MedicBoxLargePX",
	labels = {
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 20000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 40000,
	}),
	construction_points = 40000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 40000,
	}),
	Health = 1000000,
	MaxHealth = 1000000,
	lock_block_box = box(-900, -1800, 0, 1200, 1800, 1750),
	apply_res_reqs = false,
	access_range = 2400,
	attack_attraction = 40,
	AttackAttractionGetter = function (self)
		if not self.res_amounts:IsEmpty() then
			return self.attack_attraction * 3
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
	MinTimeToMalfunction = 28800000,
	MinMalfunctionDamage = 10,
	MaxMalfunctionDamage = 25,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 25000,
	HasSmartConnection = true,
	stack_count = 400,
	accepted_res = {
		"Medicine",
		"AndroidMedicine",
	},
	placement_spots = {
		"Resourceup",
		"Resourcemiddle1",
		"Resourcemiddle2",
		"Resourcedown",
	},
}

