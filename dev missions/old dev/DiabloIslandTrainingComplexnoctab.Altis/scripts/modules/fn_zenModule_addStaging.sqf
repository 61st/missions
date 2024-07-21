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


[_objectPos, 12] call YMF_fnc_addStagingZone;