UndefineClass('OrangeFloodLightPX')
DefineClass.OrangeFloodLightPX = {
	__parents = { "Building", "LightingComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	BuildMenuCategory = "sub_LightOrangePX",
	display_name = T(743667010060, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Floodlight"),
	description = T(488916059196, --[[ModItemLootDef ScavengeGenericDebris description]] "Lights up a wide area around itself while working. Has extended range, does not malfunction, more durability and drains less electricity."),
	BuildMenuIcon = "Trade/OrangeTallLight.png",
	BuildMenuPos = 199,
	display_name_pl = T(856497835022, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Floodlights"),
	entity = "Floodlight_Electric",
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
	upgrade_label = "PX_FloodLight",
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
	LightRadius = 40000,
	LightFov = 10800,
	LightDirection = point(0, 0, -4096),
	IsPowerConsumer = true,
	PowerConsumption = 2000,
	HasSmartConnection = true,
}

