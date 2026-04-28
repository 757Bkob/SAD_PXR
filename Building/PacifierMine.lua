UndefineClass('PacifierMine')
DefineClass.PacifierMine = {
	__parents = { "SingleUseTrap", "InvulnerableComponent", "MalfunctionOverTimeComponent", "ProximitySwitchComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",

	flags = { efAttackable = false, gofDamageable = false, },

	object_class = "SingleUseTrap",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "TradeTraps",
		}),
	},
	unload_anim_handsclose = "standing_DropDown_HandsClose_Low",
	load_anim_handsclose = "standing_PickUp_HandsClose_Low",
	BuildMenuCategory = "sub_GalacticFortificationsTrapsPX",
	display_name = T(737369049137, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Pacifier Mine"),
	description = T(428226678873, --[[ModItemLootDef ScavengeGenericDebris description]] "Simple pressure-activated pacifier trap. Requires rearming after each use. The number one pick for hunters, this mine is rigged with gasses that are non-lethal and induce a sedative effect on anyone in a 2 meter distance. Usually Galactic Militia will use these to keep aggressive alien life away from camps without wanting to hurt them.\n\nStats:\n<style TechSubtitleBlue>- 2 Meter Range.\n- Health Conditions (Pacified.)\n- 60% Chance to Pacify a species for a set duration of time.</style>\n\n<style red>Element:</style> \n<color TextNegative>Blunt</color> | <color TextNegative>Piercing</color> | <color TextNegative>Energy</color> | <color TextNegative>Gas</color> | <color TextPositive>Pacify</color>"),
	menu_display_name = T(933046307999, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Pacifier Mine"),
	menu_rollover_hint = T(487444088396, --[[ModItemLootDef ScavengeGenericDebris menu_rollover_hint]] "Pacifier Mine"),
	BuildMenuIcon = "Trade/TrapExplosive.png",
	BuildMenuPos = 30,
	display_name_pl = T(596118858351, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Pacifier Mine"),
	entity = "Trap_LandMine",
	update_interval = 3000,
	can_turn_off = true,
	turn_on_text = T(914449985817, --[[ModItemLootDef ScavengeGenericDebris turn_on_text |gender-variants]] "Arm"),
	turn_off_text = T(706403861667, --[[ModItemLootDef ScavengeGenericDebris turn_off_text |gender-variants]] "Disarm"),
	construction_cost = PlaceObj('ConstructionCost', {
		LiquidFuel = 5000,
		Metal = 45000,
		OilAnimal = 5000,
	}),
	construction_points = 10000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 30000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 5000,
	}),
	Health = 25000,
	MaxHealth = 25000,
	lock_block_box = box(-450, -450, 0, 450, 450, 0),
	lock_pass_box = box(-600, -600, 0, 600, 600, 700),
	max_depth = 200,
	max_elevate = 200,
	snap_to_passability = true,
	orient_to_terrain = true,
	forbid_clip_plane = true,
	ConstructIgnore = set( "Flooring" ),
	multi_placement = true,
	multi_placement_name = T(428639425082, --[[ModItemLootDef ScavengeGenericDebris multi_placement_name]] "mine"),
	multi_placement_name_pl = T(161804503369, --[[ModItemLootDef ScavengeGenericDebris multi_placement_name_pl]] "mines"),
	apply_res_reqs = false,
	progress = 2000,
	range_tags = {
		"combat",
	},
	turning_on_text = T(963431455256, --[[ModItemLootDef ScavengeGenericDebris turning_on_text]] "Waiting to be armed"),
	turning_off_text = T(679126146849, --[[ModItemLootDef ScavengeGenericDebris turning_off_text]] "Waiting to be disarmed"),
	turned_off_warning = "Disarmed",
	turn_on_icon = "UI/Icons/Infopanels/trap_arm",
	turn_off_icon = "UI/Icons/Infopanels/trap_disarm",
	turn_on_description = T(267228844181, --[[ModItemLootDef ScavengeGenericDebris turn_on_description]] "Task the survivors to arm this trap."),
	turn_off_description = T(715522840831, --[[ModItemLootDef ScavengeGenericDebris turn_off_description]] "Task the survivors to disarm this trap."),
	turn_on_anim = "standing_DropDown_Hands_Low",
	turn_off_anim = "standing_DropDown_Hands_Low",
	enable_overlay_on_placement = {
		RangeOverlay = true,
		RoomsOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	attack_weapon = "PacifyMine",
	AOEFilter = function (obj, self)
		return IsKindOf(obj, "UnitHealth") and obj.CombatGroup ~= self.CombatGroup
	end,
	InvulnerableComponent = true,
	MalfunctionOverTimeComponent = true,
	ProximitySwitchComponent = true,
	MinTimeToMalfunction = 9600000,
	MaxTimeToMalfunction = 96000000,
	MinMalfunctionDamage = 100,
	MaxMalfunctionDamage = 100,
	AddUseTimeWhenActive = false,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	ProximitySwitchTargetSpot = "Foot",
	ProximitySwitchRange = 600,
	ProximitySwitchFilter = function (self, obj)
		return obj:CanMove() and obj.CombatGroup ~= self.CombatGroup and obj.CombatGroup ~= "ScavengerBirds" and obj:IsOnGround()
	end,
}

