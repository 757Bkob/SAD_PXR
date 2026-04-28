UndefineClass('GalacticManureFreezer')
DefineClass.GalacticManureFreezer = {
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
	BuildMenuCategory = "sub_StoragePX",
	display_name = T(353867272101, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Manure Box"),
	description = T(532960315792, --[[ModItemLootDef ScavengeGenericDebris description]] "Stores a large amount of <color TextEmphasis>Manure</color> at frozen state. Stops resource decay."),
	menu_display_name = T(980252072104, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Manure Box"),
	BuildMenuIcon = "General/Storage4.png",
	BuildMenuPos = 80,
	display_name_pl = T(192732011980, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Manure Box"),
	display_name_short = T(980212343337, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Galactic Manure Box"),
	entity = "PXRecycleBox",
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
	lock_block_box = box(-500, -400, 0, 600, 400, 1750),
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
	PowerConsumption = 8000,
	HasSmartConnection = true,
	stack_count = 1000,
	accepted_res = {
		"FuelManure",
	},
	placement_spots = {
		"Resourceup",
		"Resourcemiddle1",
		"Resourcemiddle2",
		"Resourcedown",
	},
}

