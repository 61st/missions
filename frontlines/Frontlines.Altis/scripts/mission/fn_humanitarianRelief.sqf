#include "..\script_component.hpp";
/*
	File: fn_humanitarianRelief.sqf
	Author: Dom
	Description: Secondary objective to deliver humanitarian relief to a town/city
*/
params [
	["_stage","init",[""]],
	["_data",objNull,[objNull]]
];

switch _stage do {
	case "init": {
		missionNamespace setVariable ["YMF_secondaryActive","humanitarianRelief",true];
		YMF_reliefTrucks = [];

		private _sectors = [true] call YMF_fnc_getFrontlineSectors;
		private _civReps = [];
		{
			_civReps pushBack (_x getVariable ["YMF_sectorReputation",0]);
		} forEach _sectors;
		private _index = (_civReps call CBA_fnc_findMin) select 1;
		private _targetSector = _sectors select _index;
		private _marker = ["humanitarianRelief",_targetSector,false,"ColorYellow","mil_objective",1.5,"Humanitarian Relief Requested"] call YMF_fnc_createMarker;
		["The relief sector is marked, head there now.","generalNotif","Humanitarian Relief"] remoteExecCall ["YMF_fnc_notify",0];
	};

	case "cancel": {
		YMF_reliefTrucks = nil;
		deleteMarker "humanitarianRelief";
		["Mission cancelled.","failedNotif","Listening Post"] remoteExecCall ["YMF_fnc_notify",0];
	};

	case "addTruck": {
		YMF_reliefTrucks pushBack _data;

		if (count YMF_reliefTrucks isEqualTo 1) then {
			[
				{
					params ["_startPos"];
					private _convoyStart = YMF_reliefTrucks findIf {_x distance _startPos > 300};
					_convoyStart isNotEqualTo -1
				},
				{
					["startMonitor"] call YMF_fnc_humanitarianRelief;
				},
				[getPosATL _data]
			] call CBA_fnc_waitUntilAndExecute;
		};
	};

	case "startMonitor": {
		missionNamespace setVariable ["YMF_secondaryActive","humanitarianReliefNoCancel",true];
		private _sector = [markerPos "humanitarianRelief",["town","factory","city","tower","military"],true] call YMF_fnc_getNearestSector;

		private _groups = [];
		private _vehicles = getArray(missionConfigFile >> "Opfor_Setup" >> "opforLightVehicles");
		if (YMF_threatLevel > 45) then {
			_vehicles append (getArray(missionConfigFile >> "Opfor_Setup" >> "opforMediumVehicles"));
		};
		for "_i" from 1 to (count YMF_reliefTrucks) do {
			_groups pushBack ([selectRandom _vehicles,_sector,750] call YMF_fnc_createVehicle);
		};

		[
			{
				params ["_args","_handle"];
				_args params ["_scouts","_i","_sector"];

				if (YMF_reliefTrucks isEqualTo []) exitWith {
					[_handle] call CBA_fnc_removePerFrameHandler;
					deleteMarker "humanitarianRelief";
					missionNamespace setVariable ["YMF_secondaryActive",nil,true];
					["Humanitarian Relief finished.","generalNotif","Humanitarian Relief"] remoteExecCall ["YMF_fnc_notify",0];

					{
						[_x] call YMF_fnc_deleteGroup;
					} forEach _scouts;
				};

				{
					if !(alive _x) then {
						["A truck was destroyed.","failedNotif","Humanitarian Relief"] remoteExecCall ["YMF_fnc_notify",0];
						YMF_reliefTrucks deleteAt _forEachIndex;
					} else {
						if (_x distance (markerPos "humanitarianRelief") < 100 && {crew _x isEqualTo []}) then {
							deleteVehicle _x;
							["A truck was delivered successfully.","successNotif","Humanitarian Relief"] remoteExecCall ["YMF_fnc_notify",0];
							[_sector,20] call YMF_fnc_updateCivRep;
							YMF_reliefTrucks deleteAt _forEachIndex;
						};
					};
				} forEachReversed YMF_reliefTrucks;

				{
					private _group = _x;
					private _leader = leader _x;
					if !(isNull _group) then {
						if (_i mod 60 isEqualTo 0 || {waypoints _group isEqualTo []}) then {
							[_group] call CBA_fnc_clearWaypoints;
							private _newPos = (YMF_reliefTrucks select 0) getPos [random 150,random 360];
							private _waypoint = _group addWaypoint [_newPos,50];
							_waypoint setWaypointType "SAD";
							_waypoint setWaypointBehaviour "AWARE";
							_waypoint setWaypointCombatMode "YELLOW";
							_waypoint setWaypointSpeed "FULL";
							_waypoint setWaypointCompletionRadius 75;
							_waypoint setWayPointStatements ["true","deleteWaypoint [group this,currentWaypoint (group this)]"];
						};
					};
				} forEach _scouts;

				_args set [1,(_i + 1)];
			},
			1,
			[_groups,0,_sector]
		] call CBA_fnc_addPerFrameHandler;
	};
};
