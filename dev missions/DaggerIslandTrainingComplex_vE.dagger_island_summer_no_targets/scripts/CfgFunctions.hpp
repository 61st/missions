class YMF {
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
        class init_staging {};
        class init_vehicle {};
        class init_zenModuels {};
        class init_diary {};
        class init_playerpost {};
    };
    class documents {
        file = "scripts\documents";
        class DOC_mission_Info  {};
        class Doc_mission_map  {};
    };
    class systems {
        file = "scripts\systems";
        class deleteDroppedObjects {};
        class doGetOutHeloSide {};
        class dynamicMarkers {};
        class getAttendance {};
        class getServerMetrics {};
        class isValidFaction {};
        class checkStagingZone {};

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
        class addStagingZone {};

        class setVehicleLable {};

        class doStarterCrate {};
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

        class doStarterCrateSupplies {};
        class doFieldHospital {};
        class doSupplyCrate {};

        class doEmptyCrate {};

        class logistics_getContainer {};
        class logistics_getAllContainerItems {};
    };
    class modules {
        file = "scripts\modules";
        class zenModule_EnableUnitSimulation {};
        class zenModule_CreateStarterCrate {};
        class zenModule_CreateSupplyCrate {};
        class zenModule_stagingZones {};
        class zenModule_CallEndex {};
        class zenModule_createStaging  {};
        class zenModule_addStaging  {};
        // class zenModule_RekitVehicle {};
        class zenModule_ResetPlayerRadio {};
    };
    // class civ {
    //     file = "scripts\civ";
    //     class civ_init {};
    //     class civ_checkProjectile {};
    //     class civ_damage {};
    // };
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
    class training {
        file = "scripts\training";
        class initMOUT;
        class range40mmTargetGroups;
        class rangeMachineGunTargetGroups;
        class rangeMarksmanTargetGroups;
        class resetDamagedObjects;
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
