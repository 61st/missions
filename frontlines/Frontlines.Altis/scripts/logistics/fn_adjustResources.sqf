#include "..\script_component.hpp";
/*
	File: fn_adjustResources.sqf
	Author: Dom
	Description: Adjusts resources locally or via the global pool
*/
params [
	["_pos",[],[[],objNull]],
	["_resources",[],[[]]],
	["_add",false,[true]]
];

if (getNumber(missionConfigFile >> "Settings" >> "fobGlobalResourcePool") isEqualTo 0) then {
	private _nearFOB = [_pos] call YMF_fnc_getNearestFob;
	private _localResources = _nearFob getVariable ["YMF_fobResources",[0,0,0]];
	_localResources = if (_add) then {_localResources vectorAdd _resources} else {_localResources vectorDiff _resources};
	_nearFob setVariable ["YMF_fobResources",_localResources,true];
} else {
	YMF_globalResources = if (_add) then {YMF_globalResources vectorAdd _resources} else {YMF_globalResources vectorDiff _resources};
	publicVariable "YMF_globalResources";
};