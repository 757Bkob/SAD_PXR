UndefineClass('ConstructionStoragePX_Small')
DefineClass.ConstructionStoragePX_Small = {
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
	BuildMenuCategory = "sub_StoragePX_Construction",
	display_name = T(216984372180, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Small Construction Storage"),
	description = T(267655009015, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides small storage space for construction material items. Can be stolen. Has increased durability."),
	menu_display_name = T(163020556235, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Small"),
	BuildMenuIcon = "General/ConstructionBoxSmall.png",
	BuildMenuPos = 1,
	display_name_pl = T(425424721972, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Small"),
	display_name_short = T(497035334456, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Small"),
	entity = "PXConstructionSmall",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 30000,
	}),
	construction_points = 30000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 10000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	lock_block_box = box(-1800, -900, 0, 1800, 900, 1400),
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
		"ConstructionResources",
		"Other",
	},
}

