#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * It adds equipment and some selections to a given object.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Heal action <BOOL>            (Default: true)
 * 2: Staging <BOOL>                (Default: true)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call YMF_fnc_doStarterCrate;
 * [this,true,false] call YMF_fnc_doStarterCrate;
 * [this,false,true] call YMF_fnc_doStarterCrate;
 *
 */

params [
    ["_object", objNull, [objNull]],
    ["_reHealOption", true, [true]],
    ["_hasStagingZone", true, [true]]
];

INFO_2("StarterCrate", "Starting to apply functions to %1 (%2)", _crate, typeOf _crate);

// Lowercase
_quickSelectScale = toLower(_quickSelectScale);

// Call addHeal options
if (_reHealOption) then {
    [_object] call FUNC(addHeal);
    [_object] call FUNC(addHealall);
};

// Stageing zone
if (_hasStagingZone) then {
    [_object, 25] call FUNC(addStagingZone);
};