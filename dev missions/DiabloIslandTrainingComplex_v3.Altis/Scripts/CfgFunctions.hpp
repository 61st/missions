class Scripts {
    class init {
        file = "Scripts\functions\init";
        class init_aceArsenal {};
        class init_aceItemReplace {};

        class init_skillAdjustment {};
        class init_vehicle {};
        class init_staging {};

        class init_logistics {};
        class init_pylons {};

        class init_diary {};
        class init_message {};
        class init_chatCommands {};

        class init_eventHandlers {};

        class init_zenModuels {};
    };
    class documents {
        file = "Scripts\functions\documents";
        class Doc_Info {};
        class Doc_MissionControl {};
    };
    class logistics {
        file = "Scripts\functions\logistics";
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
    class players {
        file = "Scripts\functions\players";

        class player_hasClanTag {};
        class player_getClanTag {};

        class player_getRank {};
        class player_setRank {};
        class player_getRole {};

        class player_isCurator {};
        class player_isMissionAdmin {};
        class unit_setTeamColor {};
        
        class unit_getName {};
        class unit_getSquadName {};

        class player_getOrganization {};
        class player_getCompany {};
        class player_getPlatoon {};
        class player_setOrganization {};

        // Other Functions
        class unit_getVariables {};
    };
    class mission {
        file = "Scripts\functions\mission";
        class gate {};
        class teleport {};
        class addLoadoutAction {};

        class addGetOutHelo {};
        class addEscapeWreck {};

        class addLineJump {};
        class addHaloJump {};

        class setVehicleLable {};
        
        class addBaseCrate {};
        class addStagingZone {};

        class doStarterCrate {};

        class makeAgent {};
    };
    class systems {
        file = "Scripts\functions\systems";

        class allowLoadout {};
        class setupLoadoutSelection {};
        class setupLoadoutCategories {};
        class addLoadoutSelection {};

        // Arsenal releated
        class getArsenalWhitelist {};
        class addDefaultArsenalLoadout {};
        class addDefaultArsenalLoadouts {};
        class clearDefaultArsenalLoadouts {};

        class checkStagingZone {};

        class deleteDroppedObjects {};

        // Training Scripts
        class training_addHitIndicator {};
        class training_clearhitIndicator {};

       // Plane jump
        class para_lineJump {};
        class para_haloJump {};
        class para_equipment {};
        class para_backpack {};

        // Buttons and options
        class addReGear {};
        class addHeal {};
        class addArsenal {};
        
        class createActionCategory {};

        class doGetOutHeloSide {};

        class addObjectToCurator {};

        class getChannelName {};
        class filterUnitLoadout {};

        class isValidFaction {};
        
        class createVehicleLable {};
        class getVehicleLable {};

        class renameObject {};
        class getIcon {};
        
        class getAttendance {};
        class getServerMetrics {};
    };
    class vehicle {
        file = "Scripts\functions\vehicle";
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
    class modules {
        file = "Scripts\functions\modules";
        class zenModule_EnableUnitSimulation {};

        class zenModule_CreateStarterCrate {};
        class zenModule_CreateSupplyCrate {};

        class zenModule_applyLoadout {};
        class zenModule_RegearSoldier {};

        class zenModule_stagingZones {};

        class zenModule_CallEndex {};
    };
    class gear {
        file = "Scripts\functions\gear";
        class gear_preInit { preInit = 1; };
        class gear_postInitProxy { postInit = 1; };
        class gear_postInit {};

        class gear_applyLoadout {};
        class gear_applyCosmetics {};
        class gear_applyAbilities {};
        class gear_applyFunctions {};
        class gear_selectLoadout {};
        class gear_getSideConfig {};

        // Save and Load
        class gear_saveLoadout {};
        class gear_loadLoadout {};
        class gear_removeLoadout {};
        class gear_hasSavedLoadout {};

        // other
        class gear_getLoadoutRole {};
        class gear_getLoadoutName {};
        class gear_getLoadoutDisplayName {};
    };
    class diag {
        file = "Scripts\functions\diag";
        class error {};
        class info {};
        class log {};
        class warning {};
    };
    class testing {
        file = "Scripts\functions\testing";
        class testing_loadoutArrays {};
        class testing_equipmentUsed {};
    };
    class training {
        file = "Scripts\functions\training";
        class initMOUT;
        class range40mmTargetGroups;
        class rangeMachineGunTargetGroups;
        class rangeMarksmanTargetGroups;
        class resetDamagedObjects;
    };
};
class PDT_MedicalSimulator {
    
		class dialogs {
            file = "Scripts\medical_simulator";
            class lbAdd; // adds items to listbox
            class lbSelChanged; // handles changing listbox selection
            class updateButtons;// updates the button states
		};
		class medicalSimulator {
            file = "Scripts\medical_simulator";
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

class Rev_tp {   
    class Teleport {
		file ="Scripts\Rev_teleport";
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

#include "..\cav_ranges\cfgFunctions.hpp"