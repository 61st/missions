/*
	File: fn_clearArea.sqf
	Author: Dom
	Description: Clears a given area of AI, vehicles and associated items
*/
params [
	["_centre",[],[[],objNull]],
	["_groups",[],[[],grpNull,true]],
	["_specificObjects",[],[[]]]
];

if (_groups isEqualType true) then {
	_groups = (groups east) select {(leader _x) distance2D _centre < 600};
} else {
	if (_groups isEqualType grpNull) then {
		_groups = [_groups];
	};
};

{
	[_x] call YMF_fnc_deleteGroup;
} forEach _groups;

{
	if (!(_x getVariable ["YMF_isProtected",false]) && !(_x getVariable ["YMF_playerUsed",false])) then {
		deleteVehicle _x;
	};
} forEach _specificObjects;

private _objects = nearestObjects [_centre,["LandVehicle","Air","Strategic","GroundWeaponHolder","WeaponHolderSimulated"],600,true];
{
	if (!(_x getVariable ["YMF_isProtected",false]) && !(_x getVariable ["YMF_playerUsed",false]) && !((typeOf _x) in YMF_bluforClassesToSave)) then {
		deleteVehicle _x;
	};
} forEach _objects;