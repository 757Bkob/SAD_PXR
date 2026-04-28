UndefineClass('GalacticSiren')
DefineClass.GalacticSiren = {
	__parents = { "BaseAnimalLure", "PowerComponent", "ProximitySwitchComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "BaseAnimalLure",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "WirelessGalacticTurret",
		}),
	},
	unload_anim_handsclose = "standing_DropDown_HandsClose",
	load_anim_handsclose = "standing_PickUp_HandsClose",
	BuildMenuCategory = "sub_DefenseDevices",
	display_name = T(585749880366, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Siren"),
	description = T(961784860458, --[[ModItemLootDef ScavengeGenericDebris description]] "A loud device that attracts hostile animals when working. Has increased range and effect."),
	BuildMenuIcon = "General/SirenPX.png",
	BuildMenuPos = 10,
	display_name_pl = T(294116938771, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Sirens"),
	entity = "PXSiren",
	update_interval = 3000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 30000,
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
	lock_block_box = box(-1800, -1800, 0, 1200, 1800, 8400),
	max_depth = 200,
	max_elevate = 200,
	terrain_change = "soil",
	soil_border = 600,
	snap_to_passability = true,
	apply_res_reqs = false,
	access_range = 2400,
	progress = 2000,
	attack_attraction = 1005,
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
	attack_weapon = "GalacticSiren",
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
	PowerConsumption = 4000,
	HasSmartConnection = true,
	ProximitySwitchRange = 70000,
	ProximitySwitchFilter = function (self, obj)
		return BaseAnimalLure.ProximitySwitchFilter(self, obj) and obj.CombatGroup ~= self.CombatGroup
			and obj.CombatGroup ~= "ScavengerBirds"
			and (obj.BypassTrapsChance == 0 or self:StaticRandom(obj, 100) > obj.BypassTrapsChance)
	end,
	ProximitySwitchColor = 4290331364,
	ProximitySwitchActivateForEach = true,
}

