#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes AI skill values
 *
 * Example:
 * call YMF_fnc_init_skillAdjustment
 *
 * Public: No
 */

INFO("init", "Applying AI Event Handler to units...");

if (!isServer) exitWith {};

["CAManBase", "init", {
    params ["_unit"];

    if !(isPlayer _unit) then {
        #include "..\..\config\config_skill.hpp"
    };
}, true, [], true] call CBA_fnc_addClassEventHandler;
