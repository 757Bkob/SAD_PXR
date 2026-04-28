UndefineClass('CyberLightningPole')
DefineClass.CyberLightningPole = {
	__parents = { "LightningRodBuilding", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "LightningRodBuilding",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "CyberLightningPole",
		}),
	},
	BuildMenuCategory = "sub_CyberPowerPX",
	display_name = T(468850894633, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Cyber Lightning Rod"),
	description = T(967844550601, --[[ModItemLootDef ScavengeGenericDebris description]] "Catches nearby lightning strikes in a greater radius. Increases and Distributes the absorbed energy to all batteries in the grid."),
	BuildMenuIcon = "CriminalActivity/CyberLightningPole.png",
	BuildMenuPos = 1000,
	display_name_pl = T(720713646139, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Cyber Lightning Rod"),
	entity = "PXLightningRod",
	construction_cost = PlaceObj('ConstructionCost', {
		CyberProcessor = 1000,
		Metal = 20000,
		ScrapElectronics = 5000,
		ScrapMetal = 10000,
	}),
	construction_points = 15000,
	Health = 500000,
	MaxHealth = 500000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-1200, -900, 0, 1200, 900, 23800),
	terrain_change = "soil",
	soil_border = 600,
	soil_form = "circle",
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
	PowerCharge = 2000000,
	ShieldArea = 40000,
	PowerComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerGenerator = true,
	HasSmartConnection = true,
}

