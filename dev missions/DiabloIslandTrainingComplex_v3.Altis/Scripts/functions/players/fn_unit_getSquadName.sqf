#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV 
* This function fetch a squad name of a unit variable squad name
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Squad Name <STRING>
 *
 * Example:
 * [Bob] call Scripts_fnc_unit_getSquadName;
 *
 * Public: No
 */

params[["_unit", objNull, [objNull]]];

private _SquadGroupArray = [
    "OUTLAW-1-1",
    "OUTLAW-1-2",
    "OUTLAW-HQ",
    "WARDADDY",
    "WARMOMMY",
    "PHOENIX",
    "PHOENIX-1-1",
    "PHOENIX-1-2",
    "ZEUS"
];

// Get Squad name based on variable
private _groupVar = '';
if !(isNil {_unit getVariable QEGVAR(Player,Unit)}) then {
    _groupVar = _unit getVariable QEGVAR(Player,Unit);
    _groupVar = toUpper(_groupVar);
};
if (_groupVar in _SquadGroupArray) exitWith {_groupVar};

// Get Squad name based on 61st addon displayname
private _nameDisplayGroup = getText (configFile >> "CfgVehicles" >> typeOf _unit >> "displayName"); 
_nameDisplayGroup = _nameDisplayGroup splitString " ";
reverse _nameDisplayGroup;
_nameDisplayGroup = _nameDisplayGroup select 0;
if (["(", _nameDisplayGroup] call BIS_fnc_inString) then {
    _nameDisplayGroup = [_nameDisplayGroup, 1] call BIS_fnc_trimString;
    _nameDisplayGroup = [_nameDisplayGroup, 0, -1] call BIS_fnc_trimString;
} else {
    _nameDisplayGroup = ''
};
if (_nameDisplayGroup in _SquadGroupArray) exitWith {_nameDisplayGroup};

// Get Squad name based on group name
private _group = groupId (group _unit);
_group = toUpper(_group);
_group