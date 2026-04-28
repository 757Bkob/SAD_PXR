UndefineClass('MedicineStoragePX')
DefineClass.MedicineStoragePX = {
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
	display_name = T(880440003174, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Small Medicine Storage"),
	description = T(991902121160, --[[ModItemLootDef ScavengeGenericDebris description]] "Stores a small amount of <color TextEmphasis>medicine</color> in a locked cabinet preventing them from being stolen from. Has increased durability."),
	menu_display_name = T(415686705834, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Small"),
	BuildMenuIcon = "General/MEDKITPX.png",
	BuildMenuPos = 1,
	display_name_pl = T(648390357544, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Small"),
	display_name_short = T(928691599704, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Small"),
	entity = "PXMedBoxContainer",
	labels = {
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 20000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 20000,
	}),
	construction_points = 40000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 40000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	RoomPlacement = "indoors",
	lock_block_box = box(-600, -600, 0, 0, 600, 2450),
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
	stack_count = 100,
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

