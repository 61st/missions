#include "..\script_component.hpp";
/*
	File: fn_onIntelMenuTvChange.sqf
	Author: Dom
	Description: Called on change of selection on intel menu
*/
private _display = findDisplay 9647;
private _control = _display displayCtrl 1500;
private _selectionPath = tvCurSel _control;
_selectionPath params ["_firstIndex"];

if (_firstIndex isEqualTo 0 && {missionNamespace getVariable ["YMF_secondaryActive",""] isNotEqualTo ""}) exitWith {["A secondary mission is already in progress."] call YMF_fnc_notify};
private _intelRequired = _control tvValue _selectionPath;
(parseSimpleArray (_control tvData _selectionPath)) params ["_conditions","","_code"];
if (_intelRequired > YMF_intelCount) exitWith {["You need more intel."] call YMF_fnc_notify};
if !([_conditions] call YMF_fnc_conditionChecker) exitWith {["Conditions not met."] call YMF_fnc_notify};

closeDialog 0;

if (_intelRequired isNotEqualTo 0) then {
	[(_intelRequired * -1)] remoteExecCall ["YMF_fnc_updateIntel",2];
};

call compile _code;