UndefineClass('GalacticResearchDesk')
DefineClass.GalacticResearchDesk = {
	__parents = { "ResearchTerminalBase", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "ResearchTerminalBase",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticResearchDesk",
		}),
	},
	BuildMenuCategory = "sub_TerminalsPX",
	display_name = T(484933599728, --[[ModItemLootDef ScavengeGenericDebris display_name]] "Galactic Research Desk"),
	description = T(274943952506, --[[ModItemLootDef ScavengeGenericDebris description]] "Dedicated space for experiments and researching of new things. The wide range of electronic tools boosts the efficiency of the researcher, speeding up the research progress. With Galactic tech it would greatly enhance the speed of our research."),
	BuildMenuIcon = "Trade/GalacticResearchDesk.png",
	BuildMenuPos = 15,
	display_name_pl = T(443166237036, --[[ModItemLootDef ScavengeGenericDebris display_name_pl]] "Galactic Research Desk"),
	entity = "ResearchDesk_Advanced",
	labels = {
		"CPUCoreDevice",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 5000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 3000,
		Metal = 30000,
		ScrapElectronics = 6000,
	}),
	construction_points = 20000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 2000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		ScrapElectronics = 2000,
		ScrapMetal = 10000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	lock_block_box = box(-600, -1800, 0, 600, 600, 1050),
	apply_res_reqs = false,
	access_range = 2400,
	attack_attraction = 5,
	affected_by_disasters = set(),
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	ResearchEfficiency = 200,
	PowerComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 24000,
	HasSmartConnection = true,
}

