UndefineClass('PXHoloProjector')
DefineClass.PXHoloProjector = {
	__parents = { "Building", "DecorationComponent", "OwnedComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(695262196598, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Holo-Projector"),
	description = T(862382339663, --[[ModItemLootDef ScavengeGenericDebris description]] "A hologram projector."),
	menu_display_name = T(578416733291, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Holo-Projector"),
	BuildMenuIcon = "General/PXHoloProjector.png",
	BuildMenuPos = 30,
	display_name_pl = T(220563373662, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Holo-Projector"),
	display_name_short = T(306803199078, --[[ModItemLootDef ScavengeGenericDebris display_name_short]] "Holo-Projector"),
	entity = "PXHologramDec",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 40000,
		ScrapElectronics = 2000,
	}),
	construction_points = 40000,
	Health = 300000,
	MaxHealth = 300000,
	lock_block_box = box(-2400, -2700, 0, 2400, 2700, 3850),
	SupportStrengthRequirement = "weak",
	access_range = 2400,
	attack_attraction = 5,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	DecorationComponent = true,
	OwnedComponent = true,
	RelaxationDeviceComponent = true,
	ownership_class = "Chair",
}

