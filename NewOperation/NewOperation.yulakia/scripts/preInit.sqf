#include "script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */

INFO(if (is3DEN) then {"EDEN"} else {"preInit"}, "Initializing CBA Settings...");

/* Check installed moduels ------------------------------------------------------------------------------------------ */
EGVAR(patches,usesACE)          = isClass (configFile >> "CfgPatches" >> "ace_main");
EGVAR(patches,usesACEArsenal)   = isClass (configFile >> "CfgPatches" >> "ace_arsenal");
EGVAR(patches,usesACETagging)   = isClass (configFile >> "CfgPatches" >> "ace_tagging");
EGVAR(patches,usesACEX)         = isClass (configFile >> "CfgPatches" >> "acex_main");
EGVAR(patches,usesKat)          = isClass (configFile >> "CfgPatches" >> "kat_main");
EGVAR(patches,usesAlive)        = isClass (configFile >> "CfgPatches" >> "ALiVE_main");
EGVAR(patches,usesZen)          = isClass (configFile >> "CfgPatches" >> "zen_main");

// Global Variables
GVAR(isPlayer) = hasInterface || {isPlayer player};
EGVAR(Staging,ZoneStatus) = false;


#include "initSettings.inc.sqf"

INFO(if (is3DEN) then {"EDEN"} else {"preInit"}, "Initialization of CBA Settings completed...");

// Load preInit mission settings
if (is3DEN) exitWith {};
INFO("preInit", "Initializing...");

// Logistical Database
EGVAR(DATABASE,DONE) = false;
GVAR(DATABASE) = call EFUNC(init,logistics);
EGVAR(DATABASE,DONE) = true;

EGVAR(PYLONS,DONE) = false;
GVAR(PYLONS) = call EFUNC(init,pylons);
EGVAR(PYLONS,DONE) = true;

call EFUNC(init,chatCommands);
call EFUNC(init,zenModuels);

if (EGVAR(Settings,setAiSystemDifficulty) >= 1 ) then {
    call EFUNC(init,skillAdjustment);
};

call EFUNC(init,eventHandlers);

INFO("preInit", "Initialization completed.");
