UndefineClass('LaboratoryFridgePX')
DefineClass.LaboratoryFridgePX = {
	__parents = { "Building", "OwnedComponent", "PowerComponent", "ResourceDismantlingComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "LaboratoryFridge",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	StorageTargetTemperature = -18000,
	TempChangeRateOn = 4000,
	TempChangeRateOff = 3000,
	ClosedStorage = true,
	BuildMenuCategory = "sub_StoragePX_Fridges",
	display_name = T(670072984264, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Laboratory Fridge"),
	description = T(445675067122, --[[ModItemLootDef ScavengeGenericDebris description]] "Stores a large amount of <color TextEmphasis>organisms</color> at a frozen state. Stops resource decay."),
	menu_display_name = T(113271298281, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Laboratory Fridge"),
	BuildMenuIcon = "General/OrganFridge2.png",
	BuildMenuPos = 4,
	display_name_pl = T(457895989592, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Laboratory Fridge"),
	display_name_short = T(130757364411, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Laboratory Fridge"),
	entity = "PXFridgeSciFi",
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
	lock_block_box = box(-400, -400, 0, 1500, 400, 3150),
	ConstructIgnore = set( "Roof" ),
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
	OwnedComponent = true,
	PowerComponent = true,
	ResourceDismantlingComponent = true,
	StorageDepotComponent = true,
	MinTimeToMalfunction = 28800000,
	MinMalfunctionDamage = 10,
	MaxMalfunctionDamage = 25,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 25000,
	HasSmartConnection = true,
	stack_count = 2000,
	accepted_res = {
		"Organs",
	},
	placement_spots = {
		"Resourceup",
		"Resourcemiddle1",
		"Resourcemiddle2",
		"Resourcedown",
	},
}

