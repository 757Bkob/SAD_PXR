UndefineClass('MiniOrganFridgePX')
DefineClass.MiniOrganFridgePX = {
	__parents = { "Building", "OwnedComponent", "PowerComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	Prerequisites = {
		PlaceObj('CheckTech', {
			Tech = "CyberOrganStorage",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	StorageTargetTemperature = -20000,
	TempChangeRateOn = 5000,
	TempChangeRateOff = 2000,
	ClosedStorage = true,
	can_steal_from = false,
	show_amount_UI = true,
	BuildMenuCategory = "sub_StoragePX_Fridges",
	display_name = T(500414707899, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Organ Compression PSU"),
	description = T(924015093568, --[[ModItemLootDef ScavengeGenericDebris description]] "Able to compress and store Organs. With cyber crystals and alien electronics triggering the organs mutation capabilities. Rather than let our organs turn into whatever they want, we capture the energy and are able to push it out to our <em>electrical grid</em>!"),
	menu_display_name = T(668891650347, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Organ Condenser"),
	BuildMenuIcon = "General/Storage1.png",
	BuildMenuPos = 7,
	display_name_pl = T(632229193383, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Mini-Fridge Container"),
	display_name_short = T(277626424510, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Mini-Fridge Container"),
	entity = "PXGalacticCrate",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		AlienElectronics = 5000,
		CarbonNanotubes = 10000,
		CyberCrystal = 5000,
		Metal = 10000,
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
	IsPowerGenerator = true,
	Production = 300000,
	CanWorkWithoutPower = true,
	PowerSkipsStateChange = true,
	HasSmartConnection = true,
	stack_count = 50,
	accepted_res = {
		"base_organs",
	},
}

