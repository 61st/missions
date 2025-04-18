/*
	File: fn_createMortar.sqf
	Author: Dom
	Description: Creates a mortar and handles its firing on players
*/
params [
	["_pos",[],[[],objNull]],
	["_radius",200,[0]]
];

private _mortarClass = getText(missionConfigFile >> "Opfor_Setup" >> "opforMortar");
private _spawnPos = [_pos,10,_radius,3,0,0.5,0] call BIS_fnc_findSafePos;

private _mortar = createVehicle [_mortarClass,_spawnPos];

private _group = createGroup [east,true];
private _unitClass = selectRandom (selectRandom (getArray(missionConfigFile >> "Opfor_Setup" >> "opforSquads")));
private _unit = [_group,east,_unitClass,_spawnPos] call YMF_fnc_createUnit;

_unit moveInGunner _mortar;
private _ammoTypes = getArtilleryAmmo [_mortar];
private _mortarTiming = getNumber(missionConfigFile >> "Settings" >> "opforMortarFrequency");

if (YMF_isLambsEnabled) then {
	[_group] call lambs_wp_fnc_taskArtilleryRegister;
};

[
	{
		params ["_args","_handle"];
		_args params ["_mortar","_unit","_lastPos","_spread","_ammoTypes"];

		if (!alive _unit || {gunner _mortar isNotEqualTo _unit}) exitWith {[_handle] call CBA_fnc_removePerFrameHandler};

		private _targets = playableUnits select {_x distance _mortar < 1500 && {east knowsAbout _x > 3.5 && {!(objectParent _x isKindOf "Air")}}};

		if (_targets isNotEqualTo []) then {
			private _target = selectRandom _targets;
			_unit doWatch _target;
			private _currentPos = getPosATL _target;
			private _ammoType = 0;

			if (_lastPos distance _currentPos < 10) then {
				_spread = (_spread - 1) max 1;
			} else {
				_spread = (_spread * 2) min 10;
				_ammoType = if ([] call YMF_fnc_isNight) then {1} else {2};
			};
			_args set [2,_currentPos];
			_args set [3,_spread];

			private _radius = 5;
			if (_ammoType isEqualTo 0) then {_radius = _radius * _spread};

			private _pos = [_target,_radius] call CBA_fnc_randPos;
			_mortar doArtilleryFire [_pos,_ammoTypes select _ammoType,1];
			_mortar setVehicleAmmo 1;
		} else {
			if (_lastPos isNotEqualTo [0,0,0]) then {
				_unit doWatch objNull;
				_args set [2,[0,0,0]];
			};
			if (_spread isNotEqualTo 10) then {_args set [3,10]};
		};
	},
	_mortarTiming + random _mortarTiming,
	[_mortar,_unit,[0,0,0],10,_ammoTypes]
] call CBA_fnc_addPerFrameHandler;

_group;