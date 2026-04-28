UndefineClass('GalacticArmoryLocker')
DefineClass.GalacticArmoryLocker = {
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
	BuildMenuCategory = "sub_StoragePX",
	display_name = T(368783109236, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Armory Locker"),
	description = T(190662442705, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides storage space for <color TextEmphasis>Armor and Weapons</color>. Cannot be stolen from."),
	BuildMenuIcon = "General/ArmoryLocker.png",
	BuildMenuPos = 301,
	display_name_pl = T(715186736417, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Armory Locker"),
	entity = "PXContainer0101",
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 15000,
	}),
	construction_points = 5000,
	Health = 1500000,
	MaxHealth = 1500000,
	lock_block_box = box(-1500, -600, 0, 1500, 600, 1050),
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
	stack_count = 300,
	accepted_res = {
		"Apparel",
		"Weapons",
		"Tools",
	},
}

