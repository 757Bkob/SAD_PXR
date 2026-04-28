UndefineClass('CraftStoragePX_Medium')
DefineClass.CraftStoragePX_Medium = {
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
	display_name = T(610419804235, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Medium Craft Storage"),
	description = T(393469861531, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides Medium storage space for crafting and fabric items. Can be stolen. Has increased durability."),
	menu_display_name = T(616336696738, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Medium"),
	BuildMenuIcon = "General/CraftStorageMed.png",
	BuildMenuPos = 2,
	display_name_pl = T(525502802223, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Medium"),
	display_name_short = T(355596751285, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Medium"),
	entity = "LCraftingCratePX",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 40000,
	}),
	construction_points = 30000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 10000,
	}),
	Health = 750000,
	MaxHealth = 750000,
	lock_block_box = box(-900, -600, 0, 900, 600, 1400),
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
	stack_count = 250,
	accepted_res = {
		"CraftingResourcesBulk",
		"FabricsAllPlusRaw",
		"UnfinishedItem",
	},
}

