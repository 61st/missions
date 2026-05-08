#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function spawn a 61st Mechanized Infantry BattalionFieald Hostpital.
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call YMF_fnc_zenModule_createStaging
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

[
    "61st Mechanized Infantry Battalion Staging Zone", 
    [
        ["SLIDER:RADIUS", ["Zone size", "well you see its the size that maters"], [0, 25, 50], false]
    ], 
    {
        params ["_arg", "_pos"];
        _arg params ["_size"];
        _pos params ["_modulePos"];

        [_modulePos, _size] call YMF_fnc_addStagingZone;

    },
    {},
    [_modulePos]
] call zen_dialog_fnc_create;
