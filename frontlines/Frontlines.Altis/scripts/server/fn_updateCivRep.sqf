#include "..\script_component.hpp";
/*
	File: fn_updateCivRep.sqf
	Author: Dom
	Description: Updates a locations civilian reputation, if no object passed just calculate average and broadcast
*/
params [
	["_object",objNull,[objNull]],
	["_value",0,[0]]
];

if !(isNull _object) then {
	private _rep = _object getVariable ["YMF_sectorReputation",0];
	private _newRep = -100 max ((_rep + _value) min 100);
	_object setVariable ["YMF_sectorReputation",_newRep,true];
};

private _civSectors = [["town","city","factory"]] call YMF_fnc_getSectorsByType;
_civSectors = _civSectors select {!isNil {_x getVariable "YMF_sectorReputation"}};
if (_civSectors isEqualTo []) exitWith {missionNamespace setVariable ["YMF_globalReputation",0,true]};

private _newRep = 0;
private _oldRep = missionNamespace getVariable ["YMF_globalReputation",0];
private _civSectorCount = count _civSectors;
{

	_newRep = _newRep + (_x getVariable ["YMF_sectorReputation",0]);
} forEach _civSectors;
_newRep = round (_newRep / _civSectorCount);

if (_oldRep isNotEqualTo _newRep) then {
	missionNamespace setVariable ["YMF_globalReputation",_newRep,true];

	private _resistanceEnemy = [0,1] select (YMF_globalReputation < 0);
	private _resistanceFriendly = [0,1] select (YMF_globalReputation > -1);
	resistance setFriend [east,_resistanceEnemy];
	east setFriend [resistance,_resistanceEnemy];
	resistance setFriend [west,_resistanceFriendly];
	west setFriend [resistance,_resistanceFriendly];
};