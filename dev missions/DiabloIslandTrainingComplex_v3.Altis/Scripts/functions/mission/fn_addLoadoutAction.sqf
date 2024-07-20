#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV 
* This adds a addAction option to the given item for a given loadout.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Lable <STRING>
 * 2: Loadout <CLASSNAME / VARIABLE / LOADOUT ARRAY>
 *
 *
 * Return Value:
 * ActionID
 *
 * Example:
 * [this, "My Custom Loadout", "My_Loadout_Classname"] call Scripts_fnc_addLoadoutAction
 * [this, "Rifleman", "B_Soldier_F"] call Scripts_fnc_addLoadoutAction
 * [this, "Apply a special variable loadout", "Variable_Name"] call Scripts_fnc_addLoadoutAction
 * [this, "Go Nude", [[],[],[],[],[],[],"","",[],["","","","","",""]]] call Scripts_fnc_addLoadoutAction
 *
 * Public: Yes
 */

params [
    ["_object", objNull, [objNull]],
    ["_lable", "", [""]],
    ["_loadout", "", ["", []]]
];

if (_lable == "") exitWith {};
if (_loadout == "") exitWith {};

private _id = _object addAction [format ["<t color='#ffffcc'>%1</t>", _lable], {
    params ["_target", "_caller", "_actionId", "_arguments"];
    _arguments params ["_loadout"];
    [_caller, _loadout] call EFUNC(gear,applyLoadout);
}, _loadout, 1.5, true, true, "", "", 5];

_id
