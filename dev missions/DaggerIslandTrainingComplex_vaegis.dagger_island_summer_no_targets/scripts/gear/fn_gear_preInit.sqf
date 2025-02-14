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
        call EFUNC(player,setRankpatch);

        //Name Stuff
        call LXIM_w28fixes_fnc_player_set_name;
    }] call CBA_fnc_addClassEventHandler;

    ["CAManBase", "Respawn", {
        params ["_unit"];
        if (_unit == player) then {
            //rank stuff
            [player, 'BIS'] call EFUNC(player,setRank);
            call EFUNC(_unit,setRankpatch);

            //Name Stuff
            call LXIM_w28fixes_fnc_player_set_name;

            //groups
            call FUNC(onRespawn);
        };
    }] call CBA_fnc_addClassEventHandler;

    ["CAManBase", "Local", {
        //rank stuff
        [player, 'BIS'] call EFUNC(player,setRank);
        call EFUNC(player,setRankpatch);

        //Name Stuff
        call LXIM_w28fixes_fnc_player_set_name;
    }] call CBA_fnc_addClassEventHandler;
};

GVAR(Gear) = true;