#include "..\script_component.hpp";
/*
	File: fn_destroyAA.sqf
	Author: Dom
	Description: Creates and monitors mission to destroy an AA emplacement
*/

private _frontlineSectors = [false] call YMF_fnc_getFrontlineSectors;
private _spawnPos = [selectRandom _frontlineSectors,0,750,25,0,0.25,0] call BIS_fnc_findSafePos;

[format["The enemy has setup an AA site at %1.",mapGridPosition _spawnPos],"generalNotif","Destroy AA"] remoteExecCall ["YMF_fnc_notify",0];

private _templateObjects = selectRandom (getArray(missionConfigFile >> "Compositions" >> "opforAASites"));
private _AATypes = getArray(missionConfigFile >> "Opfor_Setup" >> "opforAAVehicles");
private _objects = [];
private _objectives = [];
private _squads = [];

{
	_x params ["_class","_pos","_dir"];
	_pos = _pos vectorAdd _spawnPos;

	if (_class isEqualTo "PortableHelipadLight_01_yellow_F") then {
		private _aaGrp = [selectRandom _AATypes,_pos,0] call YMF_fnc_createVehicle;
		_squads pushBack _aaGrp;
		private _vehicle = objectParent (leader _aaGrp);
		(driver _vehicle) disableAI "MOVE";
		_vehicle setDir _dir;
		_vehicle lock 3;
		_objectives pushBack _vehicle;
	} else {
		private _object = createVehicle [_class,_pos,[],0,"CAN_COLLIDE"];
		_object setPosATL _pos;
		_object setVectorUp [0,0,1];
		_object setDir _dir;

		_objects pushBack _object;
	};
} forEach _templateObjects;

_squads append ([_spawnPos,50,([0.75] call YMF_fnc_calculateEnemySquads)] call YMF_fnc_createPatrols);
_squads pushBack ([_spawnPos,50] call YMF_fnc_createStatic);

private _marker = ["destroyAA",_spawnPos,true,"ColorOPFOR","ELLIPSE",250,"Destroy AA","Grid"] call YMF_fnc_createMarker;
missionNamespace setVariable ["YMF_opforAAActive",true,true];

[
	{
		params ["_objectives"];
		(_objectives select {alive _x}) isEqualTo []
	},
	{
		params ["","_marker","_spawnPos","_squads","_objects"];

		deleteMarker _marker;
		["The AA site has been destroyed.","successNotif","Destroy AA"] remoteExecCall ["YMF_fnc_notify",0];
		missionNamespace setVariable ["YMF_opforAAActive",nil,true];

		[
			{
				params ["_pos"];
				[_pos] call YMF_fnc_areaIsClear
			},
			YMF_fnc_clearArea,
			[_spawnPos,_squads,_objects]
		] call CBA_fnc_waitUntilAndExecute;
	},
	[_objectives,_marker,_spawnPos,_squads,_objects]
] call CBA_fnc_waitUntilAndExecute;