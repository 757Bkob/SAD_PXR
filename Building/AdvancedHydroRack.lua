UndefineClass('AdvancedHydroRack')
DefineClass.AdvancedHydroRack = {
	__parents = { "HydroponicRackBuilding", "LightingComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "HydroponicRackBuilding",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "AdvHydroRacks",
		}),
	},
	BuildMenuCategory = "sub_GalacticDevicesPX",
	display_name = T(307025223453, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Advanced Hydroponic Racks"),
	description = T(477563927700, --[[ModItemLootDef ScavengeGenericDebris description]] "Grows crops under artificial light using advanced equipment. With a few tweaks here and there we could rig up internal batteries that charge from the suns rays, by doing this it makes the hydroponic racks cost us practically any electricity to run, completely powered by the sun itself and the batteries supplied to hold enough to last throughout the night. Completely self sufficient! Except ofcourse the plants inside, we have to still care for them."),
	menu_display_name = T(928006549643, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Adv Hydroponic Racks"),
	BuildMenuIcon = "Trade/HydroRack.png",
	BuildMenuPos = 100,
	display_name_pl = T(381397405266, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Advanced Hydroponic Racks"),
	display_name_short = T(170117837152, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Advanced Hydroponic Racks"),
	entity = "HydroponicRack_01",
	labels = {
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 20000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 15000,
	}),
	construction_points = 2250,
	custom_constr_rules = {
		PlaceObj('AlignToWallConstructionRule', nil),
	},
	Health = 300000,
	MaxHealth = 300000,
	max_depth = 350,
	can_be_moved = false,
	apply_res_reqs = false,
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
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	LightingComponent = true,
	PowerComponent = true,
	LightRadius = 4000,
	LightInterval = 3000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 100,
	HasSmartConnection = true,
	CableClass = "Hydroponic",
}

