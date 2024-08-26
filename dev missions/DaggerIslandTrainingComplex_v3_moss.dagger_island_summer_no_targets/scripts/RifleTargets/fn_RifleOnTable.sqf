/*
	Author: Mossarelli

	Description:
	Function that puts a rifle on a table.

	Parameter(s):
		0: The name of the object the Action is on.
*/

private ["_object"];
_object = _this select 0;
_switch = _this select 1;

switch (_switch) do
{
	case "rifle":
	{
		_switch = MOSS_RifleOnTable;
	};
	case "pistol":
	{
		_switch = MOSS_PistolOnTable;
	};
};

_groundobject = "groundweaponholder" createVehicleLocal getpos _object;
_groundobject addWeaponCargo [_switch,1];

_groundobject setPos (_object modelToWorld [0,0,0.4]);
_groundobject setVectorUp (vectorUp _object);
_groundobject setDir ((getDir _object) + 180);
