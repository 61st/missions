#include "..\script_component.hpp";
/*
	File: fn_spawnAmbientCiv.sqf
	Author: Dom
	Description: Spawns ambient land civs
*/
params [
	["_count",1,[0]],
	["_startMonitor",false,[true]]
];

private _civilianTypes = getArray(missionConfigFile >> "Civilian_Setup" >> "civilianTypes");
private _civilianVehicleTypes = getArray(missionConfigFile >> "Civilian_Setup" >> "civilianVehicleTypes");
private _sectorsToSpawn = [["city","town","factory"]] call YMF_fnc_getSectorsByType;
_sectorsToSpawn = _sectorsToSpawn - YMF_activeSectors;

for "_i" from 1 to _count do {
	private _nearRoads = (selectRandom _sectorsToSpawn) nearRoads 750;
	private _spawnPos = getPosATL (selectRandom _nearRoads);

	private _vehicle = createVehicle [selectRandom _civilianVehicleTypes,_spawnPos,[],0,"NONE"];
	_vehicle setVariable ["YMF_isProtected",true,true];
	private _group = createGroup [civilian,true];
	private _driver = _group createUnit [selectRandom _civilianTypes,_spawnPos,[],0,"NONE"];
	_driver moveInDriver _vehicle;
	_driver disableAI "FSM";
	[_group] call CBA_fnc_clearWaypoints;
	_driver addEventHandler ["Hit",YMF_fnc_civilianHit];
	_driver addEventHandler ["Killed",YMF_fnc_civilianKilled];

	YMF_ambientCivs pushBack [_driver,_group,_vehicle,[0,0,0]];
};

if (_startMonitor) then {
	[
		{
			if (YMF_ambientCivs isEqualTo []) exitWith {
				[_this select 1] call CBA_fnc_removePerFrameHandler;
			};

			{
				_x params ["_unit","_group","_vehicle","_lastPos"];
				if !(alive _unit) then {
					YMF_ambientCivs deleteAt _forEachIndex;
					[1] call YMF_fnc_spawnAmbientCiv;
					if (!isNull _vehicle && {!(_vehicle getVariable ["YMF_playerUsed",false])}) then {
						deleteVehicle _vehicle;
					};
				} else {
					if (playableUnits isEqualTo []) exitWith {};
					private _currentPos = getPosATL _unit;
					if (_lastPos distance _currentPos < 1 && {[_unit,1500] call YMF_fnc_areaIsClear}) then {
						private _sectorsToSpawn = [["city","town","factory"]] call YMF_fnc_getSectorsByType;
						_sectorsToSpawn = _sectorsToSpawn - YMF_activeSectors;
						private _nearRoads = (selectRandom _sectorsToSpawn) nearRoads 750;
						private _spawnPos = getPosATL (selectRandom _nearRoads);

						if (isNull objectParent _unit) then {
							_unit moveInDriver _vehicle;
						};
						_vehicle setPosATL _spawnPos;
						_vehicle setDamage 0;
					} else {
						if (waypoints _group isEqualTo []) then {
							private _sectorsToDrive = [["city","town","factory"]] call YMF_fnc_getSectorsByType;

							private _position = [];
							while {_position isEqualTo []} do {
								private _nearRoads = (selectRandom _sectorsToDrive) nearRoads 750;
								if (_nearRoads isNotEqualTo []) then {
									_position = selectRandom _nearRoads;
								};
							};

							private _waypoint = _group addWaypoint [_position,0];
							_waypoint setWaypointType "MOVE";
							_waypoint setWaypointBehaviour "SAFE";
							_waypoint setWaypointSpeed "LIMITED";
							_waypoint setWaypointCompletionRadius 30;
							_waypoint setWayPointStatements ["true","deleteWaypoint [group this,currentWaypoint (group this)]"];
						} else {
							if (!isNull _vehicle && {fuel _vehicle < 0.1}) then {
								[_vehicle,1] remoteExecCall ["setFuel",_vehicle];
							};
							_x set [3,_currentPos];
						};
					};
				};
			} forEachReversed YMF_ambientCivs;
		},
		15
	] call CBA_fnc_addPerFrameHandler;
};