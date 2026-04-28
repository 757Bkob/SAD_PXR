UndefineClass('GalacticSafe')
DefineClass.GalacticSafe = {
	__parents = { "Building", "OwnedComponent", "ResourceDismantlingComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "StorageSafes",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	ClosedStorage = true,
	can_steal_from = false,
	BuildMenuCategory = "sub_StoragePX_Safes_Galacticoins",
	display_name = T(777795040025, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactican Storage Safe"),
	description = T(345433935143, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides small storage space for <color TextEmphasis>Galacticoins</color><image 'UI/Icons/Resources/res_money' 1100>. Cannot be stolen from."),
	menu_display_name = T(870017436060, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Standard"),
	BuildMenuIcon = "General/GalacticSafe.png",
	BuildMenuPos = 1,
	display_name_pl = T(720676556322, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Standard"),
	entity = "Safe",
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 15000,
	}),
	construction_points = 5000,
	Health = 1500000,
	MaxHealth = 1500000,
	lock_block_box = box(-500, -400, 0, 600, 400, 1750),
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "Metal",
	attack_attraction = 40,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	ResourceDismantlingComponent = true,
	StorageDepotComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	stack_count = 5,
	accepted_res = {
		"Money",
	},
}

