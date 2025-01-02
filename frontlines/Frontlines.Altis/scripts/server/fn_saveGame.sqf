#include "..\script_component.hpp";
/*
	File: fn_saveGame.sqf
	Author: Dom
	Requires: Saves current game progress
*/
if (missionNamespace getVariable ["YMF_stopServerSave",false]) exitWith {};

private _save = [];
_save pushBack date;

private _sectorInfo = [];
{
	private _sector = _x;
	private _specificSectorInfo = [];
	{
		if !(_x in ["YMF_sectorvariable","YMF_sectorname","YMF_sectortype","YMF_sectorunitcount"]) then {
			private _value = _sector getVariable _x;
			if !(isNil "_value") then {
				_specificSectorInfo pushBack [_x,_value];
			};
		};
	} forEach (allVariables _x);
	_sectorInfo pushBack _specificSectorInfo;
} forEach YMF_allSectors;
_save pushBack _sectorInfo;

private _fobInfo = [];
private _checkedObjects = [];
private _lastIndex = (count YMF_allFOBs) - 1;
private _saveRange = 1.1 * (getNumber(missionConfigFile >> "Settings" >> "fobBuildRadius"));
{
	private _fobName = _x getVariable ["YMF_fobName",""];
	private _fobPos = getPosATL _x;
	private _fobRes = if (getNumber(missionConfigFile >> "Settings" >> "fobGlobalResourcePool") isEqualTo 0) then {_x getVariable "YMF_fobResources"} else {YMF_globalResources};
	private _fobObjects = [];
	private _nearTerrainObjects = nearestTerrainObjects [_fobPos,[],_saveRange,false,true];
	private _nearObjects = (_fobPos nearObjects _saveRange) - _nearTerrainObjects;

	{
		if (alive _x && {(typeOf _x) in YMF_bluforClassesToSave}) then {
			private _className = typeOf _x;
			private _pos = getPosWorld _x;
			private _dir = vectorDirVisual _x;
			private _up = vectorUpVisual _x;
			private _damage = getAllHitPointsDamage _x;
			if (_damage isNotEqualTo []) then {_damage = _damage select 2};
			private _items = [getItemCargo _x,getWeaponCargo _x,getMagazineCargo _x,getBackpackCargo _x];

			_checkedObjects pushBack _x;
			_fobObjects pushBack [_className,_pos,_dir,_up,_damage,_items];
		};
	} forEach _nearObjects;

	if (_forEachIndex isEqualTo _lastIndex) then {
		{
			private _className = typeOf _x;
			private _position = getPosWorld _x;
			if (_x isKindOf "AllVehicles" && {alive _x && {speed _x < 3 && {!(_x in _checkedObjects)}}}) then {
				_checkedObjects pushBack _x;
				if (_className in YMF_bluforClassesToSave || {_x getVariable ["YMF_playerUsed",false] || {[_position] call FUNC(isNearFOB)}}) then {
					private _direction = vectorDirVisual _x;
					private _up = vectorUpVisual _x;
					private _damage = getAllHitPointsDamage _x;
					if (_damage isNotEqualTo []) then {_damage = _damage select 2};
					private _items = [getItemCargo _x,getWeaponCargo _x,getMagazineCargo _x,getBackpackCargo _x];

					_fobObjects pushBack [_className,_position,_direction,_up,_damage,_items];
				};
			};
		} forEach vehicles;
	};
	_fobInfo pushBack [_fobName,_fobPos,_fobRes,_fobObjects];
} forEach YMF_allFOBs;
_save pushBack _fobInfo;

private _logistics = +YMF_logistics;
private _curRoutes = _logistics select 2;
{
	_x params ["_from","_to"];
	_x set [0,[_from getVariable "YMF_sectorVariable",_from getVariable "YMF_fobVariable"] select (isNil {_from getVariable "YMF_sectorVariable"})];
	_x set [1,[_to getVariable "YMF_sectorVariable",_to getVariable "YMF_fobVariable"] select (isNil {_to getVariable "YMF_sectorVariable"})];
} forEach _curRoutes;
_save pushBack _logistics;

_save pushBack (missionNamespace getVariable ["YMF_threatLevel",0]);
_save pushBack (missionNamespace getVariable ["YMF_intelCount",0]);

_save pushBack [YMF_playtime,YMF_bluforDeaths,YMF_opforDeaths,YMF_guerillaDeaths,YMF_civilianDeaths];

profileNamespace setVariable ["YMF_serverSave",_save];
saveProfileNamespace;