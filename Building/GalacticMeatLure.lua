UndefineClass('GalacticMeatLure')
DefineClass.GalacticMeatLure = {
	__parents = { "BaseAnimalLure", "PowerComponent", "ProximitySwitchComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "BaseAnimalLure",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "WirelessGalacticTurret",
		}),
	},
	unload_anim_handsclose = "standing_DropDown_HandsClose_Low",
	load_anim_handsclose = "standing_PickUp_HandsClose_Low",
	BuildMenuCategory = "sub_DefenseDevices",
	display_name = T(300517925200, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Scent Lure"),
	description = T(442201480461, --[[ModItemLootDef ScavengeGenericDebris description]] "A tower that is programmed to release strong scents that attract hostile animals. A stronger and more futuristic version of the stone aged meat lure. The big difference is, this uses electricity to run, not meat."),
	BuildMenuIcon = "General/PXScentTower.png",
	display_name_pl = T(843532292477, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Scent Lure"),
	entity = "PXLureTower",
	update_interval = 3000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 2000,
		ScrapMetal = 20000,
	}),
	construction_points = 10000,
	HitNegationChance = {
		blunt = 20,
		energy = 20,
		gas = 20,
		pacify = 20,
		piercing = 20,
	},
	Health = 500000,
	MaxHealth = 500000,
	damage_reduction = {
		blunt = 20,
		energy = 20,
		gas = 20,
		pacify = 20,
		piercing = 20,
	},
	lock_block_box = box(-300, -600, 0, 600, 600, 2450),
	max_depth = 200,
	max_elevate = 200,
	terrain_change = "soil",
	soil_border = 0,
	snap_to_passability = true,
	orient_to_terrain = true,
	access_range = 2400,
	progress = 2000,
	attack_attraction = 100,
	AttackAttractionGetter = function (self)
		if self.working then
			return 150
		else
			return self.attack_attraction
		end
	end,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	attack_weapon = "GalacticMeatLure",
	PowerComponent = true,
	ProximitySwitchComponent = true,
	TurnOnDelay = 0,
	TurnOffDelay = 0,
	MinTimeToMalfunction = 4800000,
	MaxTimeToMalfunction = 48000000,
	MinMalfunctionDamage = 100,
	MaxMalfunctionDamage = 100,
	AddUseTimeWhenActive = false,
	IsPowerConsumer = true,
	PowerConsumption = 6000,
	HasSmartConnection = true,
	ProximitySwitchRange = 50000,
	ProximitySwitchFilter = function (self, obj)
		return BaseAnimalLure.ProximitySwitchFilter(self, obj) and 
			obj.CombatGroup ~= self.CombatGroup
			and obj.CombatGroup ~= "ScavengerBirds"
			and obj:IsOnGround()
			and (obj.BypassTrapsChance == 0 or self:StaticRandom(obj, 100) > obj.BypassTrapsChance)
	end,
	ProximitySwitchColor = 4289544932,
	ProximitySwitchActivateForEach = true,
	res_consumed = "RawMeat",
	res_stored = 10000,
	res_operate_time = 13600000,
}

