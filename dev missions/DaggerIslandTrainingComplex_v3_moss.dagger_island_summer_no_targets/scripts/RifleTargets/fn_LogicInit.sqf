/*
	Author: Mossarelli

	Description:
	Function called by the logic to initialize the whole lane.

	Parameter(s):
		0:	Logic Object.
		1:	Weapon to use on table: "rifle", "pistol"

	Returns:
	N/A
	
	Usage:
	Put the following line of code in the init of the logic object in the editor:
	0 = [this,"rifle"] call Moss_fnc_LogicInit;
*/

private ["_logic","_weapon"]; 
_logic = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_weapon = [_this, 1, "rifle", [""]] call BIS_fnc_param;

//Error Message.
if (isNull _logic) exitWith
{
	[
		"Error: There's no Logic referred in the script. Make sure there's one Logic per firing lane."
	] call BIS_fnc_errorMsg;
};

//Init the Array for the targets. For each target synced to the logic, they will be added to this variable.
_logic setVariable ["MossLogicTargetArray",[],true];

//Get the objects that are synced to the logic.
_synced_objects_logic = synchronizedObjects _logic;

//Use Target's lane number to make a unique variable for the texture.
_logicname = ([( str _logic),11,12] call BIS_fnc_trimString);

//Make unique variable.
_texturename = format ["scripts\data\Range\%1.jpg",_logicname];

_target = 0;
_FallingTargets = 0;
_PlateTargets = 0;
_sign = objNull;
_table = objNull;
_box = objNull;

//Init all the objects.
{
	//Variable for nested foreach loops:
	_localx = _x;
	
	//Check if the target is the same as in the list:
	if (_x isKindOf MOSS_TargetObject) then
	{
		_target = _x;
	};
	
	//Check if target is of fallingtarget type:
	{
		if (_localx isKindOf _x) then
		{
			if (typeName _FallingTargets == "ARRAY") then
			{
				_FallingTargets set [count _FallingTargets, _localx];
			};
			if (typeName _FallingTargets == "SCALAR") then
			{
				_FallingTargets = [_localx];
			};
		};
	} foreach MOSS_FallingTargetObject;
	
	{
		if (_localx isKindOf _x) then
		{
			if (typeName _PlateTargets == "ARRAY") then
			{
				_PlateTargets set [count _PlateTargets, _localx];
			};
			if (typeName _PlateTargets == "SCALAR") then
			{
				_PlateTargets = [_localx];
			};
		};
	} foreach MOSS_FallingPlateTargetObject;
	
	//Check if object is a sign:
	if (_x isKindOf MOSS_SignObject) then
	{
		_sign = _x;
		_sign setObjectTexture [0,_texturename];
	};
	
	//Check if object is a table:
	if (_x isKindOf MOSS_TableObject) then
	{
		_table = _x;
	};
	
	if (_x isKindOf MOSS_Box) then
	{
		_box = _x;
		clearItemCargo _box;
		clearMagazineCargo _box;
		clearWeaponCargo _box;
	};
	if (_x isKindOf MOSS_NumberSignObject) then
	{
		_x setObjectTexture [0,_texturename];
	};
} foreach _synced_objects_logic;

//If target exists of type MOSS_TargetObject exists:
if (typeName _target != "SCALAR") then
{
	//If an item exists, initialize it:
	
	//Warning of missing target:
	if (isNull _target) then
	{
		[
			"Error: There's no target of the correct type synced to the logic. Make sure you use the right sign as target."
		] call BIS_fnc_errorMsg;
	};
	
	if (!isNull _target) then
	{
		[_target,_logic] call Moss_fnc_TargetInit;
	};
	
	//Warning of missing sign:
	if (isNull _sign) then
	{
		[
			"Error: There's no sign to register shooter, thus no way to keep score. The targets will work but not optimally."
		] call BIS_fnc_errorMsg;
	};
	
	if (!isNull _sign) then
	{
		[_sign,_logic,_monitor] call Moss_fnc_TargetSignInit;
	};
	
	if (!isNull _table) then
	{
		[_table,_weapon,_box] call Moss_fnc_WeaponOnTable;
	};
};
if true exitWith {};
if (typeName _FallingTargets != "SCALAR") then
{
	{
		[_x,_logic] call Moss_fnc_FallingTargetInit;
	} foreach _FallingTargets;
	[_sign,_logic] call Moss_fnc_FallingSignInit;
	[_table,"pistol"] call Moss_fnc_WeaponOnTable;
	_box addMagazineCargo [MOSS_PMagazine,30];
};

if (typeName _PlateTargets != "SCALAR") then
{
	{
		[_x,_logic] call Moss_fnc_FallingTargetInit;
	} foreach _PlateTargets;
	[_sign,_logic] call Moss_fnc_FallingSignInit;
	[_table,"pistol"] call Moss_fnc_WeaponOnTable;
	_box addMagazineCargo [MOSS_PMagazine,30];
};