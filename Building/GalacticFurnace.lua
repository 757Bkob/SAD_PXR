UndefineClass('GalacticFurnace')
DefineClass.GalacticFurnace = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "OwnedComponent", "PowerComponent", "ProductionDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticFurnace",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	BuildMenuCategory = "sub_GalacticDevicesPX",
	display_name = T(476122873819, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Furnace"),
	description = T(569129283251, --[[ModItemLootDef ScavengeGenericDebris description]] "Melts raw resources over time. Has an increased capacity and speed than the traditional electric furnaces.\n\nTransforms <color TextEmphasis>Scrap metal</color><image 'UI/Icons/Resources/res_scrap_metal' 1100> and <color TextEmphasis>Ore</color><image 'UI/Icons/Resources/res_ore' 1100> into <color TextEmphasis>Metal alloys</color><image 'UI/Icons/Resources/res_metal_ingot' 1100>."),
	menu_display_name = T(867597900746, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Galactic Furnace"),
	menu_description = T(428980503864, --[[ModItemLootDef ScavengeGenericDebris menu_description]] "More efficient, more capacity, faster smelting time and burns brighter."),
	BuildMenuIcon = "General/GalacticFurnace02.png",
	BuildMenuPos = 5,
	display_name_pl = T(491025443076, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Furnace"),
	entity = "GalacticFurnacePX",
	labels = {
		"BerserkTargets",
	},
	update_interval = 10000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 40000,
		Stone = 40000,
	}),
	construction_points = 30000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 30000,
		Stone = 30000,
	}),
	lock_block_box = box(-1500, -1500, 0, 1800, 1500, 2800),
	access_range = 2400,
	attack_attraction = 20,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	OwnedComponent = true,
	PowerComponent = true,
	ProductionDeviceComponent = true,
	MinTimeToMalfunction = 38400000,
	MaxTimeToMalfunction = 96000000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 40000,
	HasSmartConnection = true,
	interfaces = {
		"GalacticFurnace",
	},
	initial_recipe = "AlloyMetalGalactic",
	off_when_idle = true,
	ProductionDeviceSkipsStateChange = true,
}

