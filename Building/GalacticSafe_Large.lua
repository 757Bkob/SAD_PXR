UndefineClass('GalacticSafe_Large')
DefineClass.GalacticSafe_Large = {
	__parents = { "Building", "OwnedComponent", "ResourceDismantlingComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticSafe",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	ClosedStorage = true,
	can_steal_from = false,
	BuildMenuCategory = "sub_StoragePX_Safes_Galacticoins",
	display_name = T(746795259744, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Large Galactican Safe"),
	description = T(515518564827, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides Large storage space for <color TextEmphasis>Galacticoins</color><image 'UI/Icons/Resources/res_money' 1100>. Cannot be stolen from."),
	menu_display_name = T(349301211424, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Large"),
	BuildMenuIcon = "General/SafeBoxPX.png",
	BuildMenuPos = 2,
	display_name_pl = T(629901152738, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Large"),
	entity = "GalacticoinSafePX",
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 40000,
	}),
	construction_points = 5000,
	Health = 1500000,
	MaxHealth = 1500000,
	lock_block_box = box(-900, -1800, 0, 900, 1800, 2100),
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
	stack_count = 40,
	accepted_res = {
		"Money",
	},
}

