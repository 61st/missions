#include "script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */
if (is3DEN) exitWith {};

INFO("postInit", "Initializing...");

// Change inventory content of supply crates on mission start.
call EFUNC(init,vehicle);

// item replacement
if (EGVAR(Settings,allowReplaceItem)) then {
    call EFUNC(init,aceItemReplace);
};

// staging
call EFUNC(init,staging);

// messages
call EFUNC(init,message);

// diary records
if (EGVAR(Settings,showDiaryRecords)) then {
    call EFUNC(init,diary);
};

onPlayerConnected { 
    [QEGVAR(log,player), [getPlayerUID player, player]] call CBA_fnc_serverEvent;
};

// ["ACM_evacuation_createReinforcmentAndSwitch", {
//     params ["_originalUnit"];

//     if !(hasInterface) exitWith {
//         [_originalUnit] joinSilent "unassigned";
//     };

//     private _unit = (createGroup GVAR(playerFaction)) createUnit [(typeOf _originalUnit), (getPosATL GVAR(ReinforcePoint)), [], 0, "FORM"];



//     [_unit, ([_originalUnit] call CBA_fnc_getLoadout)] call CBA_fnc_setLoadout;

//     [{

//     }, [_unit, _originalUnit], 1] call CBA_fnc_waitAndExecute;
// }] call CBA_fnc_addEventHandler;


//radio
call EFUNC(gear,setupRadios);

INFO("postInit", "Initialization completed.");
