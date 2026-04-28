UndefineClass('BlueprintSafe_Large')
DefineClass.BlueprintSafe_Large = {
	__parents = { "Building", "OwnedComponent", "ResourceDismantlingComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "BlueprintSafe",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	ClosedStorage = true,
	can_steal_from = false,
	show_amount_UI = true,
	BuildMenuCategory = "sub_StoragePX_Safes_Blueprints",
	display_name = T(884916071795, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Large Blueprint Safe"),
	description = T(879787115310, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides large storage space for \n<color TextEmphasis>Blueprints</color> and <color TextEmphasis>Trading Schematics</color>.\nCannot be stolen from."),
	menu_display_name = T(564613773215, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Large"),
	menu_description = T(765950656820, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "A large safe specifically designed to store highly confidential and expensive blueprints. Also a location where the authorities wont discover them."),
	BuildMenuIcon = "General/SafeBoxPX.png",
	BuildMenuPos = 2,
	display_name_pl = T(954422649093, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Large"),
	display_name_short = T(812619050494, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Large"),
	entity = "BlueprintSafePX",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 100000,
	}),
	construction_points = 5000,
	Health = 1200000,
	MaxHealth = 1200000,
	upgrade_label = "StorageChest",
	lock_block_box = box(-900, -1800, 0, 900, 1800, 2100),
	MinConstructionSkill = 2,
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "Metal",
	attack_attraction = 40,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	ResourceDismantlingComponent = true,
	StorageDepotComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	stack_count = 100,
	accepted_res = {
		"BlueprintsInfoPanel",
	},
	can_disable_supply = true,
}

