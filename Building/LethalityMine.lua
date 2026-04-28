UndefineClass('LethalityMine')
DefineClass.LethalityMine = {
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
	display_name = T(543122943142, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Lethality Mine"),
	description = T(368257869043, --[[ModItemLootDef ScavengeGenericDebris description]] "Lethality mine is an upgraded version of the standard mine, except this one has been designed to absolutely destroy the target without any humane care at all.\n\nStats:\n<style TechSubtitleBlue>- 2 Meter Range.\n- 20% Health Conditions Chance (Burning, Explosion Effect, Torn Off Skin and Lung Damage)</style>\n\n<style red>Element:</style> \n<color TextPositive>Blunt</color> | <color TextPositive>Piercing</color> | <color TextNegative>Energy</color> | <color TextNegative>Gas</color> | <color TextNegative>Pacify</color>"),
	menu_display_name = T(565948749831, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Lethality Mine"),
	menu_rollover_hint = T(813333036818, --[[ModItemLootDef ScavengeGenericDebris menu_rollover_hint]] "Lethality Mine"),
	BuildMenuIcon = "Trade/TrapExplosive6.png",
	BuildMenuPos = 30,
	display_name_pl = T(390219853181, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Lethality Mine"),
	entity = "Trap_LandMine",
	update_interval = 3000,
	can_turn_off = true,
	turn_on_text = T(667839128760, --[[ModItemLootDef ScavengeGenericDebris turn_on_text |gender-variants]] "Arm"),
	turn_off_text = T(328497391536, --[[ModItemLootDef ScavengeGenericDebris turn_off_text |gender-variants]] "Disarm"),
	construction_cost = PlaceObj('ConstructionCost', {
		LiquidFuel = 15000,
		Metal = 30000,
	}),
	construction_points = 10000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
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
	multi_placement_name = T(151894929900, --[[ModItemLootDef ScavengeGenericDebris multi_placement_name]] "mine"),
	multi_placement_name_pl = T(201147480351, --[[ModItemLootDef ScavengeGenericDebris multi_placement_name_pl]] "mines"),
	apply_res_reqs = false,
	access_range = 2400,
	progress = 2000,
	range_tags = {
		"combat",
	},
	turning_on_text = T(847661774043, --[[ModItemLootDef ScavengeGenericDebris turning_on_text]] "Waiting to be armed"),
	turning_off_text = T(242896200658, --[[ModItemLootDef ScavengeGenericDebris turning_off_text]] "Waiting to be disarmed"),
	turned_off_warning = "Disarmed",
	turn_on_icon = "UI/Icons/Infopanels/trap_arm",
	turn_off_icon = "UI/Icons/Infopanels/trap_disarm",
	turn_on_description = T(613863138980, --[[ModItemLootDef ScavengeGenericDebris turn_on_description]] "Task the survivors to arm this trap."),
	turn_off_description = T(495353547617, --[[ModItemLootDef ScavengeGenericDebris turn_off_description]] "Task the survivors to disarm this trap."),
	turn_on_anim = "standing_DropDown_Hands_Low",
	turn_off_anim = "standing_DropDown_Hands_Low",
	enable_overlay_on_placement = {
		RangeOverlay = true,
		RoomsOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	attack_weapon = "LethalityMine",
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

