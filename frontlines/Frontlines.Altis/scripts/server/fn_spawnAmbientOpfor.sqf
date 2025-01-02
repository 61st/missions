#include "..\script_component.hpp";
/*
	File: fn_spawnAmbientOpfor.sqf
	Author: Dom
	Description: Spawns ambient enemy patrols
*/

private _sectorsToSpawn = YMF_allSectors select {!(_x getVariable ["YMF_sectorOwned",false]) && {!(_x in YMF_activeSectors)}};
if (_sectorsToSpawn isEqualTo []) exitWith {};

private _maxAmbientOpfor = getNumber(missionConfigFile >> "Settings" >> "maxAmbientOpfor");
private _averageStrength = [] call YMF_fnc_getAverageStrength;
_maxAmbientOpfor = round (_maxAmbientOpfor * _averageStrength);
private _vehicleTypes = getArray(missionConfigFile >> "Opfor_Setup" >> "opforTroopCarriers");

while {count YMF_ambientOpfor < _maxAmbientOpfor} do {
	private _group = [selectRandom _vehicleTypes,getPosATL (selectRandom _sectorsToSpawn),750,true] call YMF_fnc_createVehicle;
	private _vehicle = objectParent (leader _group);
	_vehicle setVariable ["YMF_isProtected",true,true];

	YMF_ambientOpfor pushBack [_vehicle,_group,[0,0,0]];
};

if (YMF_ambientOpforHandle isEqualTo -1) then {
	YMF_ambientOpforHandle = [
		{
			if (YMF_ambientOpfor isEqualTo []) exitWith {
				[_this select 1] call CBA_fnc_removePerFrameHandler;
				YMF_ambientOpforHandle = -1;
			};

			{
				_x params ["_vehicle","_group","_lastPos"];
				if (isNull _group) then {
					YMF_ambientOpfor deleteAt _forEachIndex;
					[] call YMF_fnc_spawnAmbientOpfor;
					if (!isNull _vehicle && {!(_vehicle getVariable ["YMF_playerUsed",false])}) then {
						deleteVehicle _vehicle;
					};
				} else {
					if (playableUnits isEqualTo []) exitWith {};
					private _currentPos = getPosATL _vehicle;
					if (_lastPos distance _currentPos < 1 && {[_vehicle,1500] call YMF_fnc_areaIsClear}) then {
						[_group] call YMF_fnc_deleteGroup;
						if !(isNull _vehicle) then {
							deleteVehicle _vehicle;
						};
						YMF_ambientOpfor deleteAt _forEachIndex;
						[] call YMF_fnc_spawnAmbientOpfor;
					} else {
						if (waypoints _group isEqualTo []) then {
							private _sectorsToDrive = YMF_allSectors select {!(_x getVariable ["YMF_sectorOwned",false])};

							private _position = [];
							while {_position isEqualTo []} do {
								private _nearRoads = (selectRandom _sectorsToDrive) nearRoads 750;
								if (_nearRoads isNotEqualTo []) then {
									_position = selectRandom _nearRoads;
								};
							};

							private _waypoint = _group addWaypoint [_position,10];
							_waypoint setWaypointType "MOVE";
							_waypoint setWaypointBehaviour "SAFE";
							_waypoint setWaypointCombatMode "YELLOW";
							_waypoint setWaypointCompletionRadius 30;
							_waypoint setWayPointStatements ["true","deleteWaypoint [group this,currentWaypoint (group this)]"];
						} else {
							if (!isNull _vehicle && {fuel _vehicle < 0.1}) then {
								[_vehicle,1] remoteExecCall ["setFuel",_vehicle];
							};
							_x set [2,_currentPos];
						};
					};
				};
			} forEachReversed YMF_ambientOpfor;
		},
		15
	] call CBA_fnc_addPerFrameHandler;
};