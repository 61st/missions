/*
	Author: Mossarelli

	Description:
	Function that puts a rifle on a table.

	Parameter(s):
		0: The name of the object the Action is on.
*/

private ["_table"];
_table = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_weapon = [_this, 1, "", [MOSS_RifleOnTable]] call BIS_fnc_param;
_box = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

switch (_weapon) do
{
	case "rifle":
	{
		_weapon = MOSS_RifleOnTable;
	};
	case "pistol":
	{
		_weapon = MOSS_PistolOnTable;
	};
	default
	{
		_weapon = MOSS_RifleOnTable;
	};
};

_groundobject = "groundweaponholder" createVehicleLocal getpos _table;
_groundobject addWeaponCargo [_weapon,1];

_groundobject setPos (_table modelToWorld [0,0,0.4]);
_groundobject setVectorUp (vectorUp _table);
_groundobject setDir ((getDir _table) + 180);

//Warning of missing target:
if (isNull _box) then
{
	[
		"Hint: There's no ammobox for your rifle to get magazines but the rifle spawns on the table."
	] call BIS_fnc_errorMsg;
};

if (!isNull _box) then
{
	switch (_weapon) do
	{
		case "rifle":
		{
			_box addMagazineCargo [MOSS_Magazine,30];
		};
		case "pistol":
		{
			_box addMagazineCargo [MOSS_PMagazine,30];
		};
		default
		{
			_box addMagazineCargo [MOSS_Magazine,30];
		};
	};
};
