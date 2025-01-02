class YMF {
	tag = "YMF";

    class Groups {
        file = "scripts\groups";
        class assignPlayer {};
        class handleDisconnect {};
        class initGroupMenu {};
        class onGroupMenuTvSelectChange {};
        class onRespawn {};
        class removeFromGroup {};
        class selectPosition {};
        class setupPlayer {};
        class updateGroups {};
    };
    class init {
        file = "scripts\init";
        class init_aceItemReplace {};
        class init_chatCommands {};
        class init_eventHandlers {};
        class init_logistics {};
        class init_message {};
        class init_pylons {};
        class init_skillAdjustment {};
        class init_vehicle {};
        class init_zenModuels {};
        class init_diary {};
    };
    class systems {
        file = "scripts\systems";
        class deleteDroppedObjects {};
        class doGetOutHeloSide {};
        class dynamicMarkers {};
        class getAttendance {};
        class getServerMetrics {};
        class isValidFaction {};

        class getChannelName {};
        class clearRadioIds {}
        class getRadioBase {};

        // Buttons and options
        class addHeal {};
        class addHealall {};
        class getIcon {};
        class renameObject {};
        class addObjectToCurator {};
        class createActionCategory {};

        // Plane jump
        class para_lineJump {};
        class para_haloJump {};
        class para_equipment {};
        class para_backpack {};

        // Training scripts
        class training_addHitIndicator {};
        class training_clearhitIndicator {};
        class training_addTargetComputer {};

        class createVehicleLable {};
        class getVehicleLable {};
    };
    class diag {
        file = "scripts\diag";
        class error {};
        class info {};
        class log {};
        class warning {};
    };
    class mission {
        file = "scripts\mission";

        class addBaseCrate {};

        class addGetOutHelo {};
        class addEscapeWreck {};

        class addLineJump {};
        class addHaloJump {};

        class makeAgent {};

        class setVehicleLable {};

        // class doStarterCrate {};

		class ambushlogisticsconvoy {};
		class captureuav {};
		class clearuxos {};
		class destroyaa {};
		class destroyartillery {};
		class destroyconvoy {};
		class destroyjammer {};
		class fobassault {};
		class fobhunt {};
		class humanitarianrelief {};
		class listeningpost {};
		class provideaid {};
		class raidsupplydepot {};
		class repairrequest {};
		class sectorcounterattack {};
		class startsidemission {};
    };
    class vehicle {
        file = "scripts\vehicle";
        class vehicle_addInventory {};
        class vehicle_addFunctions {};
        class vehicle_addFunctionsGlobal {};
        class vehicle_addCosmetics {};

        class vehicle_addRadio {};
        class vehicle_setRadio {};

        class vehicle_applyTextures {};

        // Staging
        class vehicle_addStagingActions {};

        class vehicle_addRegearAction {};
        class vehicle_addRepairAction {};

        class vehicle_addCosmeticSelection {};
        class vehicle_addPylonSelection {};
        class vehicle_setupPylonCategories {};

        class vehicle_applyLoadout {};
        class vehicle_addDefaultLoadout {};

        class vehicle_getPylonName {};
        class vehicle_getPylonLoadout {};
        class vehicle_getPylonIcon {};

        // Other
        class vehicle_reset {};
    };
    class logistics {
        file = "scripts\logistics";
        class addCargo {};
        class setCargo {};
        class setCargoAttributes {};
        class checkItemValidity {};
        class createCargoCrate {};

        // class doStarterCrateSupplies {};
        class doFieldHospital {};
        class doSupplyCrate {};

        class doEmptyCrate {};

        class logistics_getContainer {};
        class logistics_getAllContainerItems {};

		class adjustresources {};
		class buildloop {};
		class clearcargo {};
		class compareresources {};
		class createnewfob {};
		class createsupplycrate {};
		class deployplayer {};
		class drawdownfob {};
		class fetchdetails {};
		class getconfigside {};
		class getcurrentresources {};
		class initbuildmenu {};
		class initdeploymenu {};
		class initfactorymenu {};
		class initialiseobject {};
		class initlogisticsmenu {};
		class initnamingmenu {};
		class initretrievemenu {};
		class initsupplycratemenu {};
		class loadcrate {};
		class logisticsmenustartroute {};
		class moveobject {};
		class namefob {};
		class onbuildmenutvchange {};
		class ondeploymenutvchange {};
		class onfactorymappress {};
		class onfactorymenulbchange {};
		class onlogisticsmenucombochange {};
		class onlogisticsmenulbchange {};
		class onsupplycratetvchange {};
		class recycleobject {};
		class retrieveresources {};
		class setupbuild {};
		class setupuav {};
		class startbuild {};
		class storecrate {};
		class unloadcrate {};
		class updatefactory {};
		class updatelogistics {};
    };
    class modules {
        file = "scripts\modules";
        class zenModule_EnableUnitSimulation {};
        // class zenModule_CreateStarterCrate {};
        class zenModule_CreateSupplyCrate {};
        class zenModule_CallEndex {};
        // class zenModule_RekitVehicle {};
        class zenModule_ResetPlayerRadio {};
    };
    class civ {
        file = "scripts\civ";
        class civ_init {};
        class civ_checkProjectile {};
        class civ_damage {};
    };
    class players {
        file = "scripts\players";

        class player_getRank {};
        class player_setRank {};
        class player_setRankpatch {};
        class player_getRole {};

        class player_isCurator {};
        
        class unit_getName {};
        class unit_getSquadName {};

        class getRadioChannel {};
        class setRadioChannel {};
        class setActiveRadio {};

        // Other Functions
        class unit_getVariables {};
    };
    class gear {
        file = "scripts\gear";
        class gear_preInit { preInit = 1; };
        class gear_postInitProxy { postInit = 1; };
        class gear_postInit {};
        class gear_setupRadios {};

    };
	class command {
		file = "scripts\command";
		class initEnvironmentMenu {};
		class initIntelMenu {};
		class initSupportMenu {};
		class initZeusMenu {};
		class mineScanner {};
		class onIntelMenuTvChange {};
		class onSupportMapPress {};
		class onSupportMenuTvChange {};
		class opforScanner {};
		class showMissionInfo {};
		class startIntelAction {};
		class startSupport {};
		class updateEnvironment {};
		class zeusAction {};
	};
	class server {
		file = "scripts\server";
		class activateSector {};
		class addClassEventHandlers {};
		class areaIsClear {};
		class assignZeus {};
		class autoCrateRetrieve {};
		class buildingChanged {};
		class buyNewTruck {};
		class calculateEnemySquads {};
		class callReinforcements {};
		class civilianHit {};
		class civilianKilled {};
		class civilianWalking {};
		class clearArea {};
		class createConvoy {};
		class createDefences {};
		class createMarker {};
		class createMines {};
		class createMortar {};
		class createOrLoadSave {};
		class createPatrols {};
		class createSquad {};
		class createStatic {};
		class createTower {};
		class createUnit {};
		class createVehicle {};
		class deleteGroup {};
		class entityKilled {};
		class factoryLoop {};
		class findAirSpawn {};
		class findObjectivePosition {};
		class forceCreateFactionCrew {};
		class getBuildings {};
		class initPatrol {};
		class isNight {};
		class logisticsLoop {};
		class logisticsStartRoute {};
		class mainSectorLoop {};
		class monitorSector {};
		class playerConnected {};
		class ropeAttach {};
		class saveGame {};
		class setupLocations {};
		class setupSuicideBomber {};
		class spawnAmbientCiv {};
		class spawnAmbientCivAir {};
		class spawnAmbientOpfor {};
		class spawnAssault {};
		class spawnAttackHelicopters {};
		class spawnCivilians {};
		class spawnGuerillas {};
		class surrenderUnit {};
		class towerDestroyed {};
		class updateCivRep {};
		class updateIntel {};
		class updateThreat {};
		class wipeSave {};
		class zeusLocalityChanged {};
	};
	class util {
		file = "scripts\util";
		class addAceActions {};
		class addDepotRaidAction {};
		class checkMap {};
		class checkNumber {};
		class checkVehicleAccess {};
		class conditionChecker {};
		class createBluforMarkers {};
		class destroyItem {};
		class endGame {};
		class gatherIntel {};
		class getAverageStrength {};
		class getCaptureRatio {};
		class getFrontlineSectors {};
		class getInMan {};
		class getMissionProgress {};
		class getNearestFob {};
		class getNearestSector {};
		class getSectorsByType {};
		class getSectorTypeIndex {};
		class isNearFob {};
		class isNearSector {};
		class notify {};
		class seatSwitchedMan {};
		class secureUAV {};
		class showMapInfo {};
		class updateUI {};
	};
};

class admp {
	class init {
		file = "scripts\adminpanel";
		class init {postInit = 1;};
	};
	class admin {
		file = "scripts\adminpanel\functions\admin";
		class ban {};
		class kick {};
		class toggleSpectator {};
		class toggleZeus {};
		class toggleServerLock {};
		class updateCuratorEditableObjects {};
		class updateServerStats {};
		class createZeusModule {};
		class compileAndExec {};
		class executeOnMachine {};
		class loadPreviousCode {};
		class grantAdminAccess {};
	};
	class main {
		file = "scripts\adminpanel\functions\main";
		class getPlayerList {};
		class refresh {};
		class displayOpened {};
		class displayClosed {};
		class updatePlayerList {};
		class playerFromSelection {};
		class handleClientVars {};
		class LBSelectionChanged {};
		class setReturnValue {};
		class handleSpectatoradminpanel {};
		class updateToggleControls {};
		class refreshPIPcam {};
		class playerSetup {postInit = 1;};
		class isAdmin {};
		class panelButtonPressed {};
	};
	class map {
		file = "scripts\adminpanel\functions\map";
		class getMarkerInfo {};
		class updateMarker {};
		class updateMapMarkers {};
		class handleMapClick {};
		class updateSelectedMarker {};
		class playerFromMapClick {};
		class centreMapOnPlayer {};
	};
	class medical {
		file = "scripts\adminpanel\functions\medical";
		class getPlayerMedicalInfo {};
		class updatePlayerMedicalInfo {};
		class fullHeal {};
        class Healall {};
		class wakeUp {};
	};
	class message_display
	{
		file = "scripts\adminpanel\functions\message_display";
		class messageDisplayOpened {};
		class populateRecipientList {};
		class loadMessageList {};
		class messageHistorySelection {};
		class sendMessage {};
		class receiveMessage {};
	};
	class mission {
		file = "scripts\adminpanel\functions\mission";
		class endMission {};
		class populateEndingList {};
		class logPlayerShots {};
	};
	class playerinfo {
		file = "scripts\adminpanel\functions\playerinfo";
		class getPlayerInfo {};
		class updatePlayerInfo {};
		class assignGroup {};
		class loadPlayerSkills {};
		class populateSkillCombos {};
		class applySkills {};
	};
	class utility
	{
		file = "scripts\adminpanel\functions\utility";
		class arsenal {};
		class ghost {};
		class godmode {};
		class infiniteAmmo {};
		class toggleLocalFiredEH {};
	};
	class vehicle {
		file = "scripts\adminpanel\functions\vehicle";
		class forceDismount {};
		class rearmVehicle {};
		class refuelVehicle {};
		class repairVehicle {};
		class vehicleUnstuck {};
	};
};

class Rev_tp {   
    class Teleport {
        file ="scripts\Rev_teleport";
        class addAction {};
        class addPoint {};
        class addZEN_modules {postinit = 1;};
        class deletePoint {};
        class listCheck {};
        class onButtonClick {};
        class onLBSelChanged {};
        class onLoad {};
        class teleport {};
        class ZEN_dialog {};
    };
};
