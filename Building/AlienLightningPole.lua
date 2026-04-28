UndefineClass('AlienLightningPole')
DefineClass.AlienLightningPole = {
	__parents = { "LightningRodBuilding", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "LightningRodBuilding",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "AlienLightningPole",
		}),
	},
	BuildMenuCategory = "sub_AlienPowerPX",
	display_name = T(767627557658, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Alien Lightning Rod"),
	description = T(713853095395, --[[ModItemLootDef ScavengeGenericDebris description]] "Catches nearby lightning strikes in a greater radius. Increases and Distributes the absorbed energy to all batteries in the grid. Has increased range, energy output, durability and weather resistant. "),
	menu_display_name = T(850214315205, --[[ModItemLootDef ScavengeGenericDebris menu_display_name]] "Alien Lightning Pole"),
	BuildMenuIcon = "CriminalActivity/AlienLightningPole.png",
	BuildMenuPos = 1000,
	display_name_pl = T(620274738681, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Alien Lightning Rod"),
	entity = "PXLightningRod",
	construction_cost = PlaceObj('ConstructionCost', {
		AlienElectronics = 3000,
		Metal = 20000,
		ScrapElectronics = 5000,
		ScrapMetal = 10000,
	}),
	construction_points = 40000,
	Health = 1500000,
	MaxHealth = 1500000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
	RoomPlacement = "outdoors",
	lock_block_box = box(-1200, -900, 0, 1200, 900, 23800),
	terrain_change = "soil",
	soil_border = 600,
	soil_form = "circle",
	SupportStrengthRequirement = "average",
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "Metal-Construction",
	attack_attraction = 10,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	PowerCharge = 4000000,
	ShieldArea = 50000,
	PowerComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerGenerator = true,
	HasSmartConnection = true,
}

