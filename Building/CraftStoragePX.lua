UndefineClass('CraftStoragePX')
DefineClass.CraftStoragePX = {
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
	BuildMenuCategory = "sub_StoragePX_Crafting",
	display_name = T(517775274125, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Small Craft Storage"),
	description = T(235283585990, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides small storage space for crafting and fabric items. Can be stolen. Has increased durability."),
	menu_display_name = T(893630897684, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Small"),
	BuildMenuIcon = "General/CraftStorage.png",
	BuildMenuPos = 1,
	display_name_pl = T(681918163979, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Small"),
	display_name_short = T(552426996456, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Small"),
	entity = "PXCraftStorage1",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 20000,
	}),
	construction_points = 30000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 10000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	lock_block_box = box(-300, -600, 0, 600, 600, 1750),
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
		"CraftingResourcesBulk",
		"FabricsAllPlusRaw",
		"UnfinishedItem",
	},
}

