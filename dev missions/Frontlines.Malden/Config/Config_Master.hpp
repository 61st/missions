class Settings {
	zeusUIDs[] = { //add zeus UIDs here to be auto-assigned zeus and be given all ACE actions for Frontlines
		"76561198000002705"
	};

	difficultyModifier = 1; //change this to increase/decrease the number of enemies you face, recommended 0.5-2
	autoSaveTimer = 900; //time in seconds for the auto save feature - save also triggers when all players leave the server

	maxFobs = 10; //should match number of elements below
	defaultFOBNames[] = {"FOB Alpha","FOB Bravo","FOB Charlie","FOB Delta","FOB Echo","FOB Foxtrot","FOB Golf","FOB Hotel","FOB India","FOB Juliet"};
	fobBuildRadius = 100; //max distance from the main FOB building that the objects can be built (and therefore saved)
	startingResources[] = {250,250,250}; //starting resources in format {supplies,fuel,ammo}
	newFobResources[] = {250,250,0}; //how many resources a new FOB starts with
	fobGlobalResourcePool = 0; //0 - each FOB has individual resources, 1 is a shared/global pool. Do not change this mid-playthrough otherwise there will be unintended behaviour
	maxRecycleGain[] = {100,100,100}; //max amount of each resource that can be obtained from a vehicle recycle, reduced depending on how much damage/fuel used/ammo used

	sectorActivationRange = 600; //max 2D distance for sector to be activated
	sectorActivationHeight = 150; //max height for a sector to be activated (to avoid overflights spawning unnecessary sectors)
	sectorCaptureRatio = 0.66; //ratio of Blufor:Opfor needed to take sector
	sectorRadius[] = {250,200,300,200,250}; //radius for spawning/capturing different sector types in order: town, factory, city, tower, military
	maxCivsPerSector = 7; //max civs in sector
	maxSectorCrates = 3; //max resource crates spawned in a sector
	maxSectorIntel = 5; //max intel pieces spawned in a sector
	sectorThreatIncreaseRate[] = {5,3,7,-3,10}; //percent change in threat level on successful capture in order: town, factory, city, tower, military
	radioTowerDestructionTimer = 900; //time in seconds after a successful capture, where is the tower is destroyed the threat level is reduced by the value below
	radioTowerThreatReduction = -10; //percentage reduction in threat when a recently captured radio tower is destroyed
	logisticsTruckCapacity = 200; //single truck capacity in the logistics menu

	intelObjects[] = {"Land_laptop_03_closed_sand_F","Land_laptop_03_closed_black_F","Land_laptop_03_closed_olive_F","Land_File_research_F","Land_Document_01_F","Land_Tablet_02_black_F","Land_MobilePhone_smart_F"}; //classnames of intel items
	maxIntelFromItem = 5; //max intel gained from picking up the intel objects above
	maxIntelFromPOW = 7; //max intel gained from picking up the intel objects above

	mobileRespawnEnemyBlockRadius = 50; //how big of a radius in metres to check for nearby enemies to decide whether a mobile respawn can be used, 0 disables this feature
	mobileRespawnTimer = 60; //time in seconds before a mobile respawn can be used since its last used, 0 disables this feature

	healedCivRepGain = 2; //percentage civ rep gain per heal action on a civilian
	injuredCivRepLoss = -5; //percentage civ rep loss per injury on a civilian
	killedCivRepLoss = -15; //percentage civ rep loss per kill on a civilian
	seizedCivVehicleRepLoss = -3; //percentage loss per civ vehicle seized or destroyed
	damagedBuildingRepLoss = -4; //percentage loss per building damaged (doubled if building is destroyed (as a ruin))

	vehicleSeatRestrictions = 1; //restrict certain vehicles to certain roles; pilots for air, engineers/crewman for armour, recommended 1 (enabled)
	bluforMapMarkers = 2; //map marker choice, 0 shows mobile respawns on the map only, 1 shows blufor group leaders, 2 shows blufor group leaders and blufor UAVs

	objectInits[] = { //special vehicle inits in format {"classname","code"} or {{"classnames","classnames"},"code"} - for when CBA Class EVH's arent appropriate, namely children of 'Static', _this is the object
		{"Land_PortableWeatherStation_01_olive_F","if !(isServer) then {[""initPost"",_this] remoteExecCall [""YMF_fnc_listeningPost"",2]}"}
	};

	ignoreWhenBuilding[] = { //classes of objects not to look at collisions with when building
		"Land_HelipadSquare_F",
		"Land_TentHangar_V1_F",
		"Land_runway_edgelight",
		"Land_runway_edgelight_blue_F",
		"Land_Flush_Light_green_F",
		"Land_Flush_Light_red_F",
		"Land_Flush_Light_yellow_F",
		"CamoNet_BLUFOR_F",
		"CamoNet_BLUFOR_open_F",
		"CamoNet_BLUFOR_big_F",
		"Land_PortableLight_single_F",
		"Land_PortableLight_double_F",
		"PortableHelipadLight_01_blue_F",
		"PortableHelipadLight_01_green_F",
		"PortableHelipadLight_01_red_F",
		"Land_Sign_WarningMilitaryArea_F",
		"Land_Sign_WarningMilAreaSmall_F",
		"Land_Sign_WarningMilitaryVehicles_F",
		"Land_ClutterCutter_large_F",
		"Land_HighVoltageColumnWire_F",
		"Land_PowerWireBig_left_F"
	};

	transportVehicles[] = { //Vehicles which we want crates to be able to be loaded in using attachTo, try and use base classes if possible, format {"classname", offset, {{array},{of},{positions}}}
		{"Heli_Transport_03_base_F",-8,{{0,2.2,-1},{0.5,-1},{0,-1.2,-1}}},
		{"Truck_01_cargo_base_F",-6.5,{{0,-0.4,0.4},{0,-2.1,0.4},{0,-3.8,0.4}}},
		{"Truck_01_flatbed_base_F",-6.5,{{0,-0.4,0.4},{0,-2.1,0.4},{0,-3.8,0.4}}},
		{"VTOL_01_base_F",-7.5,{{0,4.7,-4.88},{0,3,-4.88},{0,1.3,-4.88},{0,-0.4,-4.88},{0,-2.1,-4.88}}},
		{"Van_01_transport_base_F",-6.5,{{0,-1.1,0.25},{0,-2.6,0.25}}},
		{"Van_02_vehicle_base_F",-5,{{0.5,0,0},{0,-1.75,0}}},
		{"Van_02_service_base_F",-5,{{0.5,0,0},{0,-1.75,0}}},
		{"Van_02_transport_base_F",-5,{{0,-1.75,0}}},
		{"I_G_Offroad_01_F",-6.5,{{0,-1.7,0.4}}},
		{"Offroad_01_civil_base_F",-6.5,{{0,-1.7,0.4}}},
		{"Truck_02_transport_base_F",-6.5,{{0.3,0.05,0.05},{0,-1.3,0.05},{0,-2.9,0.05}}},
		{"O_Truck_02_covered_F",-6.5,{{0,0.3,0},{0,-1.3,0},{0,-2.9,0}}},
		{"O_T_Truck_02_F",-6.5,{{0,0.3,0.05},{0,-1.3,0.05},{0,-2.9,0.05}}},
		{"I_Truck_02_covered_F",-6.5,{{0,0.3,0.05},{0,-1.3,0.05},{0,-2.9,0.05}}},
		{"I_E_Truck_02_F",-6.5,{{0,0.3,0.05},{0,-1.3,0.05},{0,-2.9,0.05}}},
		{"C_Truck_02_covered_F",-6.5,{{0,0.3,0.05},{0,-1.3,0.05},{0,-2.9,0.05}}},
		{"O_Truck_03_covered_F",-6.5,{{0,-0.8,0.4},{0,-2.4,0.4},{0,-4.0.4}}},
		{"O_Truck_03_transport_F",-6.5,{{0,-0.8,0.4},{0,-2.4,0.4},{0,-4.0.4}}},
		{"I_Heli_Transport_02_F",-6.5,{{0,4.2,-1.45},{0,2.5,-1.45},{0.8,-1.45},{0,-0.9,-1.45}}},

		{"LOP_HEMTT_trans_base",-6.5,{{0,-0.4,0.4},{0,-2.1,0.4},{0,-3.8,0.4}}},
		{"LOP_HEMTT_cov_base",-6.5,{{0,-0.4,0.4},{0,-2.1,0.4},{0,-3.8,0.4}}},

		{"rhsusf_m1151_base",-5,{{0,-1.4,0}}},
		{"rhsusf_hmmwe_base",-5,{{0,-1.4,0}}},
		{"rhsusf_M1239_base",-5,{{-0.125,-1.73,-0.66},{0,-3.28,-0.66}}},
		{"rhsusf_HEMTT_A4_base",-6.5,{{0,0.1,0.6},{0,-1.3,0.6},{0,-3,0.6}}},
		{"rhs_gaz66_flat_vmf",-4,{{0.3,0,0},{0,-1.3,0}}},
		{"rhs_gaz66o_vmf",-4,{{0.3,0,0},{0,-1.3,0}}},
		{"rhsusf_M1084A1P2_B_M2_fmtv_usarmy",-5.5,{{0.5,-0.25,0},{0,-1.5,-0.25}}},
		{"rhsusf_M1083A1P2_fmtv_usarmy",-5,{{0,-0.2,0.45},{0,-1.9,0.45}}},
		{"rhsusf_M1078A1P2_fmtv_usarmy",-5,{{0,-0.2,0.45},{0,-1.9,0.45}}},
		{"RHS_Mi8_base",-4,{{0,3.3,-1.5},{0,1.8,-1.5}}},
		{"RHS_Ural_Civ_Base",-6.5,{{0,-0.2,0.55},{0,-1.4,0.55},{0,-2.55,0.55}}},
		{"RHS_Ural_MSV_Base",-6.5,{{0,-0.2,0.55},{0,-1.4,0.55},{0,-2.55,0.55}}},
		{"rhsusf_CH53E_USMC",-9,{{0,7,-3.2},{0,5.5,-3.2},{0,4,-3.2},{0,2.5,-3.2},{0,1,-3.2}}},
		{"RHS_CH_47F_base",-9,{{0,3.2,-1.9},{0,1.7,-1.9},{0.2,-1.9},{0,-1.3,-1.9},{0,-2.8,-1.9}}},
		{"RHS_C130J_Base",-9.5,{{-0.8,8,-4},{0.8,8,-4},{-0.8,8,-2.8},{0.8,8,-2.8},{-0.8,6.5,-4},{0.8,6.5,-4},{-0.8,6.5,-2.8},{0.8,6.5,-2.8},{-0.8,5,-4},{0.8,5,-4},{-0.8,5,-2.8},{0.8,5,-2.8},{-0.8,3.5,-4},{0.8,3.5,-4},{-0.8,3.5,-2.8},{0.8,3.5,-2.8},{-0.8,2,-4},{0.8,2,-4},{-0.8,2,-2.8},{0.8,2,-2.8},{-0.8,0.5,-4},{0.8,0.5,-4},{-0.8,0.5,-2.8},{0.8,0.5,-2.8}}},

		{"UK3CB_M939_Open",-6.5,{{0,-0.2,0},{0,-1.9,0}}},
		{"UK3CB_M939_Guntruck",-6.5,{{0,-0.2,0},{0,-1.9,0}}},
		{"UK3CB_M939_Closed",-6.5,{{0,-0.2,0},{0,-1.9,0}}},
		{"UK3CB_M939_Recovery",-6.5,{{0,-0.2,0},{0,-1.9,0},{0,-3.6,0}}},
		{"UK3CB_T810_Transport_Closed",-6.5,{{0,0.3,-0.3},{0,-1.4,-0.3}}},
		{"UK3CB_T810_Recovery",-6.5,{{0,0.3,-0.3},{0,-1.4,-0.3},{0,-3.1,-0.3}}},
		{"UK3CB_Ural_Recovery",-6.5,{{0,-0.2,0.1},{0,-1.9,0.1},{0,-3.6,0.1}}},
		{"UK3CB_MTVR_Open",-6.5,{{0,-0.2,0},{0,-1.9,0}}},
		{"UK3CB_MTVR_Closed",-6.5,{{0,-0.2,0},{0,-1.9,0}}},
		{"UK3CB_MTVR_Recovery",-6.5,{{0,-0.2,0},{0,-1.9,0},{0,-3.6,0}}},
		{"UK3CB_BAF_Husky_Base",-5,{{-0.1,-1.9,-0.2}}},
		{"UK3CB_BAF_MAN_HX58_Cargo_Base",-3,{{-0.75,4.5,-0.4},{0.75,4.5,-0.4},{-0.75,2.9,-0.4},{0.75,2.9,-0.4},{-0.75,1.3,-0.4},{0.75,1.3,-0.4},{-0.75,-0.3,-0.4},{0.75,-0.3,-0.4}}},
		{"UK3CB_BAF_MAN_HX60_Cargo_Base",-3,{{-0.75,3,-0.4},{0.75,3,-0.4},{-0.75,1.4,-0.4},{0.75,1.4,-0.4},{-0.75,-0.2,-0.4},{0.75,-0.2,-0.4}}},
		{"UK3CB_BAF_Merlin_Base",-8,{{0.2,5,-1.5},{0.2,3.6,-1.5},{0.2,2.2,-1.5},{0.2,0.8,-1.5}}}
	};
};