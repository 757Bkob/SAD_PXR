UndefineClass('GalacticFreezer')
DefineClass.GalacticFreezer = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "OwnedComponent", "PowerComponent", "ResourceDismantlingComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticStorage",
		}),
		PlaceObj('CheckTech', {
			Tech = "Freezers",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	StorageTargetTemperature = -18000,
	TempChangeRateOn = 4000,
	TempChangeRateOff = 3000,
	ClosedStorage = true,
	StorageDemandPriority = 2,
	show_amount_UI = true,
	BuildMenuCategory = "sub_StoragePX_Fridges",
	display_name = T(955146061362, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Large Galactic Freezer"),
	description = T(420316511936, --[[ModItemLootDef ScavengeGenericDebris description]] "Stores a large amount of <color TextEmphasis>Raw food</color><image 'UI/Icons/Resources/res_raw_food' 1100> and <color TextEmphasis>Cooked meals</color><image 'UI/Icons/Resources/res_food' 1100> at frozen state. Stops resource decay."),
	menu_display_name = T(903386883218, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Galactic Freezer"),
	BuildMenuIcon = "General/FridgeFreezer.png",
	BuildMenuPos = 3,
	display_name_pl = T(589972738205, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Freezers"),
	display_name_short = T(197735909752, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Galactic Freezer"),
	entity = "PXFridgeFreezer1",
	labels = {
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 20000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 60000,
		ScrapElectronics = 5000,
	}),
	construction_points = 40000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapElectronics = 2000,
		ScrapMetal = 40000,
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

