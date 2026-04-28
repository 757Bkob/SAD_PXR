UndefineClass('CryoFreezeMine')
DefineClass.CryoFreezeMine = {
	__parents = { "SingleUseTrap", "InvulnerableComponent", "MalfunctionOverTimeComponent", "ProximitySwitchComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",

	flags = { efAttackable = false, gofDamageable = false, },

	object_class = "SingleUseTrap",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "BlackMarketTraps",
		}),
	},
	unload_anim_handsclose = "standing_DropDown_HandsClose_Low",
	load_anim_handsclose = "standing_PickUp_HandsClose_Low",
	BuildMenuCategory = "sub_GalacticFortificationsTrapsPX",
	display_name = T(133617197031, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Cryo Freeze Mine"),
	description = T(270788868850, --[[ModItemLootDef ScavengeGenericDebris description]] "Cryo-Freeze, a chemical used in this very trap that when triggered, will disperse the liquid up the limb, freezing it in place for up to an hour or two. Works a charm to keep them nasty ol'critters in one place for that clean headshot. Downside is a 1 meter range and the blasted things take a long time to reload. Good for thinning out a wave of threats though.\n\nStats:\n<style TechSubtitleBlue>- 1 Meter Range.\n- Health Conditions (Cryogenically Frozen)\n- 60% Chance to Cryogenically Freeze.</style>\n\n<style red>Element:</style> \n<color TextNegative>Blunt</color> | <color TextNegative>Piercing</color> | <color TextNegative>Energy</color> | <color TextPositive>Gas</color> | <color TextNegative>Pacify</color>"),
	menu_display_name = T(847240640587, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Cryo Freeze Mine"),
	menu_rollover_hint = T(397004684840, --[[ModItemLootDef ScavengeGenericDebris menu_rollover_hint]] "Cryo Freeze Mine"),
	BuildMenuIcon = "Trade/TrapExplosive5.png",
	BuildMenuPos = 30,
	display_name_pl = T(634441570884, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Cryo Freeze Mine"),
	entity = "Trap_LandMine",
	update_interval = 3000,
	can_turn_off = true,
	turn_on_text = T(468775892531, --[[ModItemLootDef ScavengeGenericDebris turn_on_text |gender-variants]] "Arm"),
	turn_off_text = T(459764697051, --[[ModItemLootDef ScavengeGenericDebris turn_off_text |gender-variants]] "Disarm"),
	construction_cost = PlaceObj('ConstructionCost', {
		LiquidFuel = 5000,
		Metal = 25000,
		PowerCell = 1000,
	}),
	construction_points = 10000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 5000,
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
	multi_placement_name = T(422653109224, --[[ModItemLootDef ScavengeGenericDebris multi_placement_name]] "mine"),
	multi_placement_name_pl = T(144939496078, --[[ModItemLootDef ScavengeGenericDebris multi_placement_name_pl]] "mines"),
	apply_res_reqs = false,
	progress = 2000,
	range_tags = {
		"combat",
	},
	turning_on_text = T(636316361637, --[[ModItemLootDef ScavengeGenericDebris turning_on_text]] "Waiting to be armed"),
	turning_off_text = T(795191503127, --[[ModItemLootDef ScavengeGenericDebris turning_off_text]] "Waiting to be disarmed"),
	turned_off_warning = "Disarmed",
	turn_on_icon = "UI/Icons/Infopanels/trap_arm",
	turn_off_icon = "UI/Icons/Infopanels/trap_disarm",
	turn_on_description = T(128692633485, --[[ModItemLootDef ScavengeGenericDebris turn_on_description]] "Task the survivors to arm this trap."),
	turn_off_description = T(406762240031, --[[ModItemLootDef ScavengeGenericDebris turn_off_description]] "Task the survivors to disarm this trap."),
	turn_on_anim = "standing_DropDown_Hands_Low",
	turn_off_anim = "standing_DropDown_Hands_Low",
	enable_overlay_on_placement = {
		RangeOverlay = true,
		RoomsOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	attack_weapon = "CryoFreezeMine",
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

