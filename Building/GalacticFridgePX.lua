UndefineClass('GalacticFridgePX')
DefineClass.GalacticFridgePX = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "OwnedComponent", "PowerComponent", "ResourceDismantlingComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticStorage",
		}),
		PlaceObj('CheckTech', {
			Tech = "Refrigeration",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	StorageTargetTemperature = 4000,
	TempChangeRateOn = 4000,
	TempChangeRateOff = 3000,
	ClosedStorage = true,
	StorageDemandPriority = 2,
	show_amount_UI = true,
	BuildMenuCategory = "sub_StoragePX_Fridges",
	display_name = T(119778674646, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Large Fridge"),
	description = T(764523607256, --[[ModItemLootDef ScavengeGenericDebris description]] "Stores a large amount of <color TextEmphasis>Raw food</color><image 'UI/Icons/Resources/res_raw_food' 1100> and <color TextEmphasis>Cooked meals</color><image 'UI/Icons/Resources/res_food' 1100> at low temperatures. Slows down resource decay."),
	menu_display_name = T(659958406161, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Galactic Fridge"),
	menu_description = "",
	BuildMenuIcon = "General/FridgeFreezer2.png",
	BuildMenuPos = 2,
	display_name_pl = T(936620878236, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Fridges"),
	display_name_short = T(836885402522, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Galactic Fridge"),
	entity = "PXFridgeFreezer1",
	labels = {
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 20000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 40000,
		ScrapElectronics = 3000,
	}),
	construction_points = 40000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 20000,
	}),
	Health = 400000,
	MaxHealth = 400000,
	lock_block_box = box(-600, -600, 0, 600, 600, 2100),
	apply_res_reqs = false,
	access_range = 2400,
	attack_attraction = 40,
	AttackAttractionGetter = function (self)
		if not self.res_amounts:IsEmpty() then
			return self.attack_attraction * 3
		else
			return self.attack_attraction
		end
	end,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	OwnedComponent = true,
	PowerComponent = true,
	ResourceDismantlingComponent = true,
	StorageDepotComponent = true,
	MinTimeToMalfunction = 28800000,
	MinMalfunctionDamage = 10,
	MaxMalfunctionDamage = 25,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 18000,
	HasSmartConnection = true,
	stack_count = 200,
	accepted_res = {
		"FoodRaw",
		"FoodProcessed",
		"Food",
		"Drink",
		"AndroidFood",
	},
	placement_spots = {
		"Resourceup",
		"Resourcemiddle1",
		"Resourcemiddle2",
		"Resourcedown",
	},
}

