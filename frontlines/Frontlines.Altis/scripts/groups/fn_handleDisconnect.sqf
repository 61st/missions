#include "..\script_component.hpp";
params ["_unit","","_uid"];

private _oldSelectionPath = [_unit] call DT_fnc_removeFromGroup;

[DT_dynamicGroups,_oldSelectionPath] remoteExecCall ["DT_fnc_updateGroups",-2,"DT_DG_JIP"];

if (playableUnits isEqualTo []) then {
	DT_playtime = DT_playtime + (CBA_missionTime - DT_currentPlaytime);
	[] call DT_fnc_saveGame;
	DT_currentPlaytime = 0;
};

private _zeusVariable = format ["zeus_%1",_uid];
private _zeus = missionNamespace getVariable [_zeusVariable,objNull];
if !(isNull _zeus) then {
	deleteVehicle _zeus;
	missionNamespace setVariable [_zeusVariable,nil];
};