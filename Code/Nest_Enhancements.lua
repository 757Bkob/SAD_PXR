DefineClass.GalacticanNest = {
	__parents = { "TerritorialNest" },
	
	entity = "AlienSphere_Shape_05",
	
	daily_plant_damage = consts.NestDailyPlantDamage,
	guard_range = consts.NestGuardRange,
	guardians_count = consts.NestGuardiansCount,
	adults_max_count = consts.NestMaxAdultsPerNest,
	hatchlings_max_count = consts.NestMaxHatchlingsPerNest,
	elders_max_count = consts.NestMaxEldersPerNest,
	min_spawn_interval = consts.NestMinSpawnInterval,
	max_spawn_interval = consts.NestMaxSpawnInterval,
	initial_range = consts.NestInitialTerritorialRange,
	terrain_range_border = consts.NestTerrainRangeAddition,
	grow_interval = consts.NestGrowInterval,
	range_increase = consts.NestRangeIncrease,
	max_range = consts.NestMaxTerritorialRange,
	min_attacks_count = consts.NestMinMembersForAttack,
	engagement_time = consts.NestEngagementTime,
	
	adult_class = "Shrieker" ,
	hatchling_class = "Shrieker_Hatchling",
	elder_class = "Shrieker_Mother",
	
	terrain_change = true,
	terrain_form_preset = "ShriekerTerritoryTerrain",
	terrain_noise_preset = "ShriekerTerritoryNoise",
	terrain_type1 = "A_Grass_Red",
	terrain_type2 = "AlienEarth_04",
	
	detect_spot = "Detect",
}