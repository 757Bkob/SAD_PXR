UndefineClass('GalacticDryingRackL')
DefineClass.GalacticDryingRackL = {
	__parents = { "Building", "OwnedComponent", "ResourceTransformComponent", "StorageDepotComponent", "VisualStorageComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticAnimalTaming",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands_High",
	load_anim_hands = "standing_PickUp_Hands_High",
	TreatStorageAsDevice = true,
	ClosedStorage = true,
	BuildMenuCategory = "sub_RanchingPX",
	display_name = T(887153776441, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Drying Rack"),
	description = T(867743842058, --[[ModItemLootDef ScavengeGenericDebris description]] "Dries raw resources over time. Has built-in roof which slows down the drying process but allows products to be stored longer before spoiling. Is resistant to lightning weather conditions and has increased capacity, able to store much larger amounts of resources. Dries resources alot faster than the standard drying rack.\n\nTransforms <color TextEmphasis>Raw red meat</color><image 'UI/Icons/Resources/res_raw_meatt' 1100> into <color TextEmphasis>Dried meat</color><image 'UI/Icons/Resources/res_dry_meat' 1100>, and <color TextEmphasis>Hides</color><image 'UI/Icons/Resources/res_raw_leather' 1100> into <color TextEmphasis>Leather</color><image 'UI/Icons/Resources/res_dry_leather' 1100>."),
	BuildMenuIcon = "General/GalacticDryerRack.png",
	BuildMenuPos = 1,
	display_name_pl = T(437768930507, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Drying Rack"),
	entity = "Skin_Rag_04",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		ScrapElectronics = 1000,
		ScrapMetal = 50000,
	}),
	construction_points = 40000,
	Health = 1000000,
	MaxHealth = 1000000,
	upgrade_label = "DryingRackLarge",
	lock_block_box = box(-600, -1500, 0, 1500, 1500, 2800),
	access_range = 2400,
	CustomMaterial = "ScrapMetal",
	attack_attraction = 40,
	AttackAttractionGetter = function (self)
		if not self.res_amounts:IsEmpty() then
			return self.attack_attraction * 3
		else
			return self.attack_attraction
		end
	end,
	affected_by_disasters = set(),
	OwnedComponent = true,
	ResourceTransformComponent = true,
	StorageDepotComponent = true,
	VisualStorageComponent = true,
	TransformMetaProp = "drying_progress",
	TransformDisplayName = T(991987394585, --[[ModItemLootDef ScavengeGenericDebris TransformDisplayName]] "Drying"),
	TransformDefinitions = {
		PlaceObj('ResTransform', {
			'InputResource', "RawMeat",
			'OutputResource', "DryMeat",
			'TransformTime', 960000,
		}),
		PlaceObj('ResTransform', {
			'InputResource', "LeatherRaw",
			'OutputResource', "LeatherDry",
			'TransformTime', 1920000,
		}),
		PlaceObj('ResTransform', {
			'InputResource', "SmokeleafRaw",
			'OutputResource', "SmokeleafDry",
			'TransformTime', 3840000,
		}),
	},
	stack_count = 500,
	accepted_res = {
		"RawMeat",
		"LeatherRaw",
		"SmokeleafRaw",
	},
	show_grouped_stacks = false,
	distribute_allowed_res = false,
	can_disable_supply = true,
	res_entity_for_stack = true,
}

