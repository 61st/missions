#include "..\script_component.hpp";
params [
    ["_unit",objNull,[objNull]],
    ["_corpse",objNull,[objNull]]
];

[_this select 0, _unit] call ace_medical_treatment_fnc_fullHeal;
[_this select 0, _unit] call ACM_core_fnc_resetVariables;
[_this select 0, _unit] call ACM_airway_fnc_resetVariables;
[_this select 0, _unit] call ACM_breathing_fnc_resetVariables;
[_this select 0, _unit] call ACM_circulation_fnc_resetVariables;
[_this select 0, _unit] call ACM_damage_fnc_resetVariables;
[_this select 0, _unit] call ACM_disability_fnc_resetVariables;
[[],["You have been REZED, praise ArmA"], [""], [""]] call CBA_fnc_notify;

private _oldPath = [];
private _oldRole = "";

{
    _x params ["","_roles","","","_units"];
    private _groupIndex = _forEachIndex;
    {
        if (_x isEqualTo _corpse) exitWith {
            _oldPath = [_groupIndex,_forEachIndex];
            _oldRole = _roles select _forEachIndex;
        };
    } forEach _units;
} forEach YMF_dynamicGroups;

if (_oldPath isEqualTo []) exitWith {[] call YMF_fnc_initGroupMenu};

[_unit,_oldPath,_oldRole,true] remoteExecCall ["YMF_fnc_assignPlayer",2];