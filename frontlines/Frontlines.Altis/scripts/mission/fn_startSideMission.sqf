#include "..\script_component.hpp";
/*
	File: fn_startSideMission.sqf
	Author: Dom
	Description: Randomly selects a new side mission that hasn't recently been used
*/
params [
	["_lastMissionType","",[""]]
];

private _timer = getNumber(missionConfigFile >> "Settings" >> "sideMissionTimer");
private _sideMissions = [
	["destroyAA","YMF_threatLevel > 33 && {!(missionNamespace getVariable ['YMF_opforAAActive',false])}",YMF_fnc_destroyAA],
	["destroyArtillery","YMF_threatLevel > 33 && {!(missionNamespace getVariable ['YMF_opforArtilleryActive',false])}",YMF_fnc_destroyArtillery],
	["destroyJammer","YMF_threatLevel > 33 && {!(missionNamespace getVariable ['YMF_opforJammerActive',false])}",YMF_fnc_destroyJammer],
	["convoyAmbush","YMF_threatLevel > 50 && {(YMF_logistics select 2) isNotEqualTo []}",YMF_fnc_ambushLogisticsConvoy],
	["counterAttack","YMF_threatLevel > 33 && {[] call YMF_fnc_getMissionProgress > 0.1}",YMF_fnc_sectorCounterAttack],
	["fobAssault","YMF_threatLevel > 80 && {count playableUnits > 3}",YMF_fnc_fobAssault],
	["repairRequest","private _possibleSectors = [['town','city','factory'],true] call YMF_fnc_getSectorsByType; (_possibleSectors findIf {_x getVariable ['YMF_destroyedBuildingCount',0] isNotEqualTo 0}) isNotEqualTo -1",YMF_fnc_repairRequest],
	["destroyOpforConvoy","private _opforFactories = [['factory']] call YMF_fnc_getSectorsByType; (_opforFactories findIf {!(_x getVariable ['YMF_sectorOwned',false])}) isNotEqualTo -1",YMF_fnc_destroyConvoy]
];

private _index = _sideMissions findIf {_x select 0 isEqualTo _lastMissionType};
_sideMissions deleteAt _index;

{
	_x params ["","_conditions"];
	if !([_conditions] call YMF_fnc_conditionChecker) then {
		_sideMissions deleteAt _forEachIndex;
	};
} forEachReversed _sideMissions;

if (_sideMissions isEqualTo [] || {playableUnits isEqualTo []}) exitWith {[YMF_fnc_startSideMission,"",_timer] call CBA_fnc_waitAndExecute};

(selectRandom _sideMissions) params ["_type","","_code"];
[] call _code;

[YMF_fnc_startSideMission,_type,_timer + (random _timer)] call CBA_fnc_waitAndExecute;