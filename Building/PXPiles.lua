UndefineClass('PXPiles')
DefineClass.PXPiles = {
	__parents = { "StoragePile", "OwnedComponent", "ResourceDismantlingComponent", "StorageDepotComponent", "VisualStorageComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "StoragePile",
	unload_anim_handsclose = "standing_DropDown_HandsClose_Low",
	load_anim_handsclose = "standing_PickUp_HandsClose_Low",
	BuildMenuCategory = "sub_StoragePX",
	display_name = T(962075289302, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Project-X Stockpile"),
	description = T(755224839618, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides a temporary storage for organs and blueprints until you have unlocked the Lab Fridge and Blueprint safe."),
	menu_display_name = T(323336066541, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Project-X Stockpile"),
	BuildMenuIcon = "UI/Icons/Build Menu/storage_pile",
	BuildMenuPos = 1,
	display_name_pl = T(687995948099, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Project-X Stockpile"),
	construction_points = 200,
	lock_block_box = box(-600, -600, 0, 600, 600, 700),
	forbid_clip_plane = true,
	can_be_moved = false,
	access_range = 2400,
	CustomMaterial = "Dirt",
	adjust_waypoint_z = true,
	attack_attraction = 40,
	AttackAttractionGetter = function (self)
		if not self.res_amounts:IsEmpty() then
			return self.attack_attraction * 3
		else
			return self.attack_attraction
		end
	end,
	affected_by_disasters = set(),
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	OwnedComponent = true,
	ResourceDismantlingComponent = true,
	StorageDepotComponent = true,
	VisualStorageComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	stack_count = 4,
	accepted_res = {
		"Organs",
		"Blueprint",
		"CyberBlueprint",
		"AlienBlueprint",
		"TradingSchematic",
	},
	res_entity_for_stack = true,
	is_visual_depot = true,
}

