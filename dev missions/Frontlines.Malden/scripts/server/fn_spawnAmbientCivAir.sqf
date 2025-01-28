/*
	File: fn_spawnAmbientAir.sqf
	Author: Dom
	Description: Spawns ambient civilian air
*/
params [
	["_count",1,[0]],
	["_startMonitor",false,[true]]
];

private _civilianTypes = getArray(missionConfigFile >> "Civilian_Setup" >> "civilianTypes");
private _civilianAirTypes = getArray(missionConfigFile >> "Civilian_Setup" >> "civilianAircraftTypes");

for "_i" from 1 to _count do {
	(selectRandom YMF_airportLocations) params ["_spawnPos"];
	private _vehicle = createVehicle [selectRandom _civilianAirTypes,_spawnPos,[],10,"NONE"];
	_vehicle setVariable ["YMF_isProtected",true,true];
	private _group = createGroup [civilian,true];
	private _pilot = _group createUnit [selectRandom _civilianTypes,_spawnPos,[],0,"NONE"];
	_pilot moveInDriver _vehicle;
	[_group] call CBA_fnc_clearWaypoints;
	_pilot addEventHandler ["Hit",YMF_fnc_civilianHit];
	_pilot addEventHandler ["Killed",YMF_fnc_civilianKilled];

	YMF_ambientCivAir pushBack [_pilot,_group,_vehicle,[0,0,0]];
};

if (_startMonitor) then {
	[
		{
			if (YMF_ambientCivAir isEqualTo []) exitWith {
				[_this select 1] call CBA_fnc_removePerFrameHandler;
			};

			{
				_x params ["_unit","_group","_vehicle","_lastPos"];
				if !(alive _unit) then {
					YMF_ambientCivAir deleteAt _forEachIndex;
					[1] call YMF_fnc_spawnAmbientCivAir;
					if (!isNull _vehicle && {!(_vehicle getVariable ["YMF_playerUsed",false])}) then {
						deleteVehicle _vehicle;
					};
				} else {
					if !(alive _vehicle) then {
						deleteVehicle _unit;
						YMF_ambientCivAir deleteAt _forEachIndex;
						[1] call YMF_fnc_spawnAmbientCivAir;
					} else {
						if (playableUnits isEqualTo []) exitWith {};
						private _currentPos = getPosATL _unit;
						if (_lastPos distance _currentPos < 1 && {[_unit,1500] call YMF_fnc_areaIsClear}) then {
							[_group] call YMF_fnc_deleteGroup;
							YMF_ambientCivAir deleteAt _forEachIndex;
							[1] call YMF_fnc_spawnAmbientCivAir;
						} else {
							if (speed (vehicle _unit) < 5 && {count (waypoints _group) < 1}) then {
								private _waypoint = _group addWaypoint [(selectRandom YMF_airportLocations) select 0,0];
								_waypoint setWaypointType "MOVE";
								_waypoint setWaypointBehaviour "SAFE";
								_waypoint setWaypointCompletionRadius 10;
								_waypoint setWayPointStatements ["true","deleteWaypoint [group this,currentWaypoint (group this)]; [group this,getPosATL this] spawn BIS_fnc_wpLand"];
							} else {
								if (!isNull _vehicle && {fuel _vehicle < 0.1}) then {
									[_vehicle,1] remoteExecCall ["setFuel",_vehicle];
								};
								_x set [3,_currentPos];
							};
						};
					};
				};
			} forEachReversed YMF_ambientCivAir;
		},
		15
	] call CBA_fnc_addPerFrameHandler;
};