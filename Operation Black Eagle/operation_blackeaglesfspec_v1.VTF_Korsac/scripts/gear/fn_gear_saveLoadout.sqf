#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function save players loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * true or false <BOOL>
 *
 * Example:
 * [player] call YMF_fnc_gear_saveLoadout
 *
 */

params [["_unit", objNull, [objNull]]];

private _loadout = [_unit] call CBA_fnc_getLoadout;
_loadout = [_loadout] call FUNC(filterUnitLoadout);

_unit setVariable [QEGVAR(Gear,Loadout), _loadout];
_unit setVariable [QEGVAR(Gear,SavedLoadout), true];

[
    [],
    ["Loadout has been saved"],
    [""],
    [""]
] call CBA_fnc_notify;

_unit getVariable [QEGVAR(Gear,SavedLoadout), false];
