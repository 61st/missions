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

        // Buttons and options
        class addHeal {};

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

        class createVehicleLable {};
        class getVehicleLable {};

        class updateEnvironment {};
        class initEnvironmentMenu {};

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

        // Other Functions
        class unit_getVariables {};
    };
    class gear {
        file = "scripts\gear";
        class gear_preInit { preInit = 1; };
        class gear_postInitProxy { postInit = 1; };
        class gear_postInit {};
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
class PDT_MedicalSimulator {
    
		class dialogs {
            file = "scripts\medical_simulator";
            class lbAdd; // adds items to listbox
            class lbSelChanged; // handles changing listbox selection
            class updateButtons;// updates the button states
		};
		class medicalSimulator {
            file = "scripts\medical_simulator";
            // spawns patient
            class spawnPatient;
            // clears selected stretcher
            class clearStretcher;
            // clears all stretchers
            class clearAllStretchers;
            // create the view camera
            class createCamera;
            // gets object from string
            class getObject;
            // damages patients
            class damagePatient;
		};
	};