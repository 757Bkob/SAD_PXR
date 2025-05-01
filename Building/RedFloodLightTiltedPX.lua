UndefineClass('RedFloodLightTiltedPX')
DefineClass.RedFloodLightTiltedPX = {
	__parents = { "Building", "LightingComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	BuildMenuCategory = "sub_LightRedPX",
	display_name = T(916234646415, --[[ModItemBuildingCompositeDef RedFloodLightTiltedPX display_name]] "Tilted Floodlight"),
	description = T(928228722702, --[[ModItemBuildingCompositeDef RedFloodLightTiltedPX description]] "Lights up a wide area in front of itself while working. Has extended range, does not malfunction, more durability and drains less electricity."),
	BuildMenuIcon = "Trade/RedTiltedLight.png",
	BuildMenuPos = 200,
	display_name_pl = T(258257333402, --[[ModItemBuildingCompositeDef RedFloodLightTiltedPX display_name_pl]] "Tilted Floodlights"),
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
	access_range = 1800,
	attack_attraction = 25,
	LightingComponent = true,
	PowerComponent = true,
	LightRadius = 70000,
	LightFov = 7800,
	LightDirection = point(-4096, 0, -4096),
	LightShowArea = true,
	IsPowerConsumer = true,
	PowerConsumption = 2000,
	HasSmartConnection = true,
}

