UndefineClass('ConstructionStoragePX')
DefineClass.ConstructionStoragePX = {
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
	show_amount_UI = true,
	BuildMenuCategory = "sub_StoragePX_Construction",
	display_name = T(804260132814, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Large Construction Storage"),
	description = T(767295416963, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides large storage space for construction material items. Can be stolen. Has increased durability."),
	menu_display_name = T(109598534990, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Large"),
	BuildMenuIcon = "General/Storage2.png",
	BuildMenuPos = 3,
	display_name_pl = T(157592304326, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Large"),
	display_name_short = T(737435264983, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Large"),
	entity = "PXCrate2",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 60000,
	}),
	construction_points = 30000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 10000,
	}),
	Health = 1000000,
	MaxHealth = 1000000,
	lock_block_box = box(-1200, -2400, 0, 1200, 2400, 700),
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
	stack_count = 500,
	accepted_res = {
		"ConstructionResources",
	},
}

