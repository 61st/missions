#include "..\script_component.hpp";
/*
	File: fn_activateSector.sqf
	Author: Dom
	Description: Activates a sector
*/
params [
	["_sectorObj",objNull,[objNull]]
];
YMF_activeSectors pushBack _sectorObj;
publicVariable "YMF_activeSectors";

private _sectorVar = _sectorObj getVariable "YMF_sectorVariable";
private _sectorType = _sectorObj getVariable "YMF_sectorType";
private _sectorStrength = (_sectorObj getVariable ["YMF_sectorStrength",1]) max 0.25;
private _sectorRep = _sectorObj getVariable ["YMF_sectorReputation",100];

private _isCivilian = _sectorType in ["town","city","factory"];
private _isFortified = _sectorType in ["city","military"];
private _isMilitary = _sectorType isEqualTo "military";

private _sectorTypeIndex = [_sectorType] call YMF_fnc_getSectorTypeIndex;
private _spawnRadius = (getArray(missionConfigFile >> "Settings" >> "sectorRadius")) select _sectorTypeIndex;

private _cratesAndIntel = [];
if (_isCivilian) then {
	private _maxCrates = getNumber(missionConfigFile >> "Settings" >> "maxSectorCrates");
	private _crateTypes = getArray(missionConfigFile >> "Logi_Setup" >> "bluforCrates");

	for "_i" from 1 to ceil (random _maxCrates) do {
		private _spawnPos = [_sectorObj,10,_spawnRadius,5,0,0.3,0] call BIS_fnc_findSafePos;
		if (_spawnPos isEqualTo []) exitWith {};

		private _crate = createVehicle [selectRandom _crateTypes,_spawnPos];
		_cratesAndIntel pushBack _crate;
	};

	[_sectorObj,_sectorRep,_spawnRadius] call YMF_fnc_spawnCivilians;
};

private _buildings = [_sectorObj,_spawnRadius] call YMF_fnc_getBuildings;
if (_buildings isNotEqualTo []) then {
	private _intelCount = getNumber(missionConfigFile >> "Settings" >> "maxSectorIntel");
	private _intelTypes = getArray(missionConfigFile >> "Settings" >> "intelObjects");

	private _spawnOptions = [];
	{
		_spawnOptions append (_x buildingPos -1);
	} forEach _sectorBuildings;
	[_spawnOptions,true] call CBA_fnc_shuffle;

	_intelCount = (round (random _intelCount)) min (count _spawnOptions);
	for "_i" from 0 to (_intelCount - 1) do {
		private _intel = createVehicle [selectRandom _intelTypes,_spawnOptions select _i];
		_intel setDir (random 360);
		_cratesAndIntel pushBack _intel;
	};
};

private _extras = [0,0,0,0];
if (_isFortified) then {_extras set [0,1]; _extras set [1,1]};
if (_isMilitary) then {_extras set [3,1]};

private _squads = [_sectorObj,_spawnRadius,([_sectorStrength,_extras] call YMF_fnc_calculateEnemySquads)] call YMF_fnc_createPatrols;
_squads append ([_sectorObj,_spawnRadius,true] call YMF_fnc_createDefences);

private _unitCount = 0;
{
	_unitCount = _unitCount + (count units _x);
} forEach _squads;
_sectorObj setVariable ["YMF_sectorUnitCount",_unitCount];

if (_isMilitary || {YMF_threatLevel > 50 && {YMF_threatLevel > (random 100)}}) then {
	private _timer = getNumber(missionConfigFile >> "Settings" >> "reinforcementTimer");
	[YMF_fnc_callReinforcements,[_sectorObj],_timer + random (_timer / 2)] call CBA_fnc_waitAndExecute;
};

if (YMF_globalReputation < 0) then {
	if (abs YMF_globalReputation > random(100)) then {
		[_sectorObj] call YMF_fnc_spawnGuerillas;
	};
};

[
	YMF_fnc_monitorSector,
	1,
	[_sectorObj,_spawnRadius,_squads,_cratesAndIntel,0]
] call CBA_fnc_addPerFrameHandler;