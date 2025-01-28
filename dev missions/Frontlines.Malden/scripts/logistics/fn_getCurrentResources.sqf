/*
	File: fn_getCurrentResources.sqf
	Author: Dom
	Description: Gets the resource count of nearest FOB or globally depending on settings
*/
params [
	["_pos",[],[[],objNull]]
];

if (getNumber(missionConfigFile >> "Settings" >> "fobGlobalResourcePool") isEqualTo 0) then {
	private _nearFOB = [_pos] call YMF_fnc_getNearestFob;
	_nearFob getVariable ["YMF_fobResources",[0,0,0]];
} else {
	YMF_globalResources
};