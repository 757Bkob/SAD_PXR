UndefineClass('BlueprintSafe')
DefineClass.BlueprintSafe = {
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
	display_name = T(867614151275, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Standard Blueprint Safe"),
	description = T(573427105419, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides small storage space for \n<color TextEmphasis>Blueprints</color> and <color TextEmphasis>Trading Schematics</color>.\nCannot be stolen from."),
	menu_display_name = T(101964564569, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Standard"),
	menu_description = T(771357851161, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "A small safe specifically designed to store highly confidential and expensive blueprints. Also a location where the authorities wont discover them."),
	BuildMenuIcon = "General/BPSafePX.png",
	BuildMenuPos = 1,
	display_name_pl = T(673594004278, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Standard"),
	display_name_short = T(357056483398, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Standard"),
	entity = "PXBlueprintSafe",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 50000,
	}),
	construction_points = 5000,
	Health = 1200000,
	MaxHealth = 1200000,
	upgrade_label = "StorageChest",
	lock_block_box = box(-500, -400, 0, 600, 400, 1750),
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
	stack_count = 20,
	accepted_res = {
		"BlueprintsInfoPanel",
	},
	can_disable_supply = true,
}

