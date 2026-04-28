UndefineClass('MiniFridgePX')
DefineClass.MiniFridgePX = {
	__parents = { "Building", "OwnedComponent", "PowerComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	StorageTargetTemperature = 4000,
	TempChangeRateOn = 4000,
	TempChangeRateOff = 3000,
	ClosedStorage = true,
	BuildMenuCategory = "sub_StoragePX_Fridges",
	display_name = T(530386689007, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Mini-Fridge Container"),
	description = T(432442376874, --[[ModItemLootDef ScavengeGenericDebris description]] "Provides small storage for food items at a negative temperature to prevent decay."),
	menu_display_name = T(473042406967, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Mini-Fridge Container"),
	BuildMenuIcon = "General/Storage1.png",
	BuildMenuPos = 1,
	display_name_pl = T(515048449042, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Mini-Fridge Container"),
	display_name_short = T(187592487813, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Mini-Fridge Container"),
	entity = "PXGalacticCrate",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 1000,
	}),
	construction_points = 30000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 10000,
	}),
	Health = 300000,
	MaxHealth = 300000,
	lock_block_box = box(-500, -400, 0, 600, 400, 1750),
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
	PowerComponent = true,
	StorageDepotComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 8000,
	stack_count = 100,
	accepted_res = {
		"Food",
		"FoodProcessed",
		"Drink",
		"FoodRaw_Other",
		"AndroidFood",
	},
}

