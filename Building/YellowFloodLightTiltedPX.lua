UndefineClass('YellowFloodLightTiltedPX')
DefineClass.YellowFloodLightTiltedPX = {
	__parents = { "Building", "LightingComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	BuildMenuCategory = "sub_LightYellowPX",
	display_name = T(290120039602, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Tilted Floodlight"),
	description = T(529991816985, --[[ModItemLootDef ScavengeGenericDebris description]] "Lights up a wide area in front of itself while working. Has extended range, does not malfunction, more durability and drains less electricity."),
	BuildMenuIcon = "Trade/YellowTiltedLight.png",
	BuildMenuPos = 200,
	display_name_pl = T(676649474148, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Tilted Floodlights"),
	entity = "Floodlight_Diagonal",
	update_interval = 5000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 20000,
		ScrapElectronics = 1000,
	}),
	construction_points = 20000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 20000,
	}),
	Health = 1000000,
	MaxHealth = 1000000,
	upgrade_label = "PX_FloodLightTilted",
	RoomPlacement = "outdoors",
	lock_flags = 124,
	lock_block_box = box(-600, -600, 0, 600, 600, 6300),
	terrain_change = "soil",
	soil_form = "circle",
	working_during_construction = true,
	access_range = 2400,
	attack_attraction = 25,
	LightingComponent = true,
	PowerComponent = true,
	LightRadius = 70000,
	LightFov = 7800,
	LightDirection = point(-4096, 0, -4096),
	IsPowerConsumer = true,
	PowerConsumption = 2000,
	HasSmartConnection = true,
}

