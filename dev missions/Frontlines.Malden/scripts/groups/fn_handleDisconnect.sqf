/*
	File: fn_handleDisconnect.sqf
	Author: Dom
	Description: Handles a players disconnection
*/
params ["_unit","","_uid"];

private _oldSelectionPath = [_unit] call YMF_fnc_removeFromGroup;

[YMF_dynamicGroups,_oldSelectionPath] remoteExecCall ["YMF_fnc_updateGroups",-2,"YMF_DG_JIP"];

if (playableUnits isEqualTo []) then {
	YMF_playtime = YMF_playtime + (CBA_missionTime - YMF_currentPlaytime);
	[] call YMF_fnc_saveGame;
	YMF_currentPlaytime = 0;
};

private _zeusVariable = format ["zeus_%1",_uid];
private _zeus = missionNamespace getVariable [_zeusVariable,objNull];
if !(isNull _zeus) then {
	deleteVehicle _zeus;
	missionNamespace setVariable [_zeusVariable,nil];
};