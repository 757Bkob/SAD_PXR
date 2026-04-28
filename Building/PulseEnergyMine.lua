UndefineClass('PulseEnergyMine')
DefineClass.PulseEnergyMine = {
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
	display_name = T(288182557124, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Pulse Energy Mine"),
	description = T(265216338632, --[[ModItemLootDef ScavengeGenericDebris description]] "Simple pressure-activated pulse energy trap. Requires rearming after each use. Originally designed to be a riot deterrent, non-lethal stunning mine. With a few tweaks here and there, I made this thing abit more juicier. Its now designed to inflict blunt shock energy, a good deterrent to make anyone do a U-Turn. \n\nStats:\n<style TechSubtitleBlue>- 5 Meter Range.\n- Health Conditions (Concussions, Bruising, Pain, Fractures and Brain damage.)\n- 70% Chance to render unconscious.</style>\n\n<style red>Element:</style> \n<color TextNegative>Blunt</color> | <color TextNegative>Piercing</color> | <color TextPositive>Energy</color> | <color TextNegative>Gas</color> | <color TextNegative>Pacify</color>"),
	menu_display_name = T(603881941357, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Pulse Energy Mine"),
	menu_rollover_hint = T(396647672861, --[[ModItemLootDef ScavengeGenericDebris menu_rollover_hint]] "Pulse Energy Mine"),
	BuildMenuIcon = "Trade/TrapExplosive3.png",
	BuildMenuPos = 30,
	display_name_pl = T(516871354353, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Pulse Energy Mine"),
	entity = "Trap_LandMine",
	update_interval = 3000,
	can_turn_off = true,
	turn_on_text = T(535025355583, --[[ModItemLootDef ScavengeGenericDebris turn_on_text |gender-variants]] "Arm"),
	turn_off_text = T(695195427855, --[[ModItemLootDef ScavengeGenericDebris turn_off_text |gender-variants]] "Disarm"),
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 15000,
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
	multi_placement_name = T(768125359024, --[[ModItemLootDef ScavengeGenericDebris multi_placement_name]] "mine"),
	multi_placement_name_pl = T(412062026657, --[[ModItemLootDef ScavengeGenericDebris multi_placement_name_pl]] "mines"),
	apply_res_reqs = false,
	progress = 2000,
	range_tags = {
		"combat",
	},
	turning_on_text = T(380941104369, --[[ModItemLootDef ScavengeGenericDebris turning_on_text]] "Waiting to be armed"),
	turning_off_text = T(320277116194, --[[ModItemLootDef ScavengeGenericDebris turning_off_text]] "Waiting to be disarmed"),
	turned_off_warning = "Disarmed",
	turn_on_icon = "UI/Icons/Infopanels/trap_arm",
	turn_off_icon = "UI/Icons/Infopanels/trap_disarm",
	turn_on_description = T(511561998053, --[[ModItemLootDef ScavengeGenericDebris turn_on_description]] "Task the survivors to arm this trap."),
	turn_off_description = T(724618145259, --[[ModItemLootDef ScavengeGenericDebris turn_off_description]] "Task the survivors to disarm this trap."),
	turn_on_anim = "standing_DropDown_Hands_Low",
	turn_off_anim = "standing_DropDown_Hands_Low",
	enable_overlay_on_placement = {
		RangeOverlay = true,
		RoomsOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	attack_weapon = "PulseEnergyMine",
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

