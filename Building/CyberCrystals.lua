UndefineClass('CyberCrystals')
DefineClass.CyberCrystals = {
	__parents = { "FieldBase", "InvulnerableComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",

	flags = { efAttackable = false, gofDamageable = false, },

	object_class = "FieldBase",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "CyberCrystalFarm",
		}),
	},
	BuildMenuCategory = "sub_PlantsPX",
	display_name = T(483058851226, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Cyber Crystals Field"),
	description = T(463545890619, --[[ModItemLootDef ScavengeGenericDebris description]] "Instead of making these crystals with expensive components, we could grow our own in the purest of form."),
	menu_display_name = T(960671201514, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Cyber Crystal Farm"),
	menu_description = T(747001919667, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "Instead of making these crystals synthetically, we could grow our own in the purest of form."),
	BuildMenuIcon = "CriminalActivity/CyberCrystalFarm.png",
	BuildMenuPos = 70,
	display_name_pl = T(456422567556, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Cyber Crystal Field"),
	display_name_short = T(755664138286, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Cyber Crystal Field"),
	can_be_deconstructed = false,
	Health = 0,
	MaxHealth = 0,
	can_be_copied = false,
	can_be_moved = false,
	access_range = 2400,
	affected_by_disasters = set(),
	Crop = "CyberCrystals",
	InvulnerableComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
}

