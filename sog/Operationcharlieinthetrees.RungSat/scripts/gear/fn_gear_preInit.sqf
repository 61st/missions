#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, SGT.Brostrom.A
 * This function runs on preInit and setup the gear system using CBA addClassEventHandler.
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Example:
 * call YMF_fnc_gear_preInit
 *
 */

GVAR(Gear) = false;

EGVAR(gear,groupIDsSynched) = false;
EGVAR(gear,playerLoadoutGiven) = false;

if (isClass (missionConfigFile >> "CfgLoadouts")) then {
    ["CAManBase", "InitPost", {
        params ["_unit"];
        if (!local _unit) exitWith {
            if (_unit == player) then {
                SHOW_WARNING("Gear", "Non-local player in initPost");
            };
        };

        //rank stuff
        [player, 'BIS'] call EFUNC(player,setRank);

        //Name Stuff
    }] call CBA_fnc_addClassEventHandler;

    ["CAManBase", "Respawn", {
        //rank stuff
        [player, 'BIS'] call EFUNC(player,setRank);

        //Name Stuff
    }] call CBA_fnc_addClassEventHandler;

    ["CAManBase", "Local", {
        //rank stuff
        [player, 'BIS'] call EFUNC(player,setRank);

        //Name Stuff
    }] call CBA_fnc_addClassEventHandler;
};

GVAR(Gear) = true;
