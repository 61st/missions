#include "..\script_component.hpp";
params [
	["_desiredRole","rifleman",[""]],
	["_isRespawn",false,[true]]
];

private _roleConfig = missionConfigFile >> "Dynamic_Roles" >> _desiredRole;
private _defaultLoadout = getArray(_roleConfig >> "defaultLoadout");

if (_isRespawn) then {
	player setUnitLoadout (missionNamespace getVariable ["SIXONE_savedLoadout",_defaultLoadout]);
} else {
	SIXONE_savedLoadout = _defaultLoadout;
	player setUnitLoadout _defaultLoadout;
	
	private _weapons = getArray(_roleConfig >> "arsenalWeapons");
	_weapons append getArray(missionConfigFile >> "Common_Arsenal" >> "weapons");
	private _magazines = getArray(_roleConfig >> "arsenalMagazines");
	_magazines append getArray(missionConfigFile >> "Common_Arsenal" >> "magazines");
	private _items = getArray(_roleConfig >> "arsenalItems");
	_items append getArray(missionConfigFile >> "Common_Arsenal" >> "items");
	private _backpacks = getArray(_roleConfig >> "arsenalBackpacks");
	_backpacks append getArray(missionConfigFile >> "Common_Arsenal" >> "backpacks");


	if EGVAR(patches,usesACE) then {
		[player,true,false] call ace_arsenal_fnc_removeVirtualItems;
		{
			[player,_x,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach [_weapons,_magazines,_items,_backpacks];
		private _roleName = getText(_roleConfig >> "name");
		[_roleName,_defaultLoadout] call ace_arsenal_fnc_addDefaultLoadout;
	} else {
		{
			[_x,(_x call BIS_fnc_getVirtualWeaponCargo)] call BIS_fnc_removeVirtualWeaponCargo;
			[_x,_weapons,false,false] call BIS_fnc_addVirtualWeaponCargo;

			[_x,(_x call BIS_fnc_getVirtualMagazineCargo)] call BIS_fnc_removeVirtualMagazineCargo;
			[_x,_magazines,false,false] call BIS_fnc_addVirtualMagazineCargo;

			[_x,(_x call BIS_fnc_getVirtualItemCargo)] call BIS_fnc_removeVirtualItemCargo;
			[_x,_items,false,false] call BIS_fnc_addVirtualItemCargo;

			[_x,(_x call BIS_fnc_getVirtualBackpackCargo)] call BIS_fnc_removeVirtualBackpackCargo;
			[_x,_backpacks,false,true] call BIS_fnc_addVirtualBackpackCargo;
			
		} forEach SIXONE_arsenalBoxes;
	};


	private _roleTraits = getArray(_roleConfig >> "traits");
	{
		_x params ["_trait","_value"];
		if (_value isEqualType true && {_value}) then {
			player setUnitTrait [_trait,false];
		};
	} forEach (getAllUnitTraits player);

	{
		_x params ["_trait","_value",["_custom","false"]];
		if (_value in ["true","false"]) then {_value = call compile _value};
		player setUnitTrait [_trait,_value,call compile _custom];
	} forEach _roleTraits;

	private _customVariables = getArray(_roleConfig >> "customVariables");
	{
		player setVariable [_x,nil,true];
	} forEach (missionNamespace getVariable ["SIXONE_myCustomVariables",[]]);

	SIXONE_myCustomVariables = [];
	{
		_x params ["_variable","_value","_global"];
		if (_value in ["true","false"]) then {_value = call compile _value};
		player setVariable [_variable,_value,call compile _global];
		SIXONE_myCustomVariables pushBack _variable;
	} forEach _customVariables;

	player setVariable ["SIXONE_role",_desiredRole,true];
};
// Team stuff
_playerTColor = player getVariable "sixone_teamcolor";
player assignTeam _playerTColor;

//rank stuff
[player, 'BIS'] call EFUNC(player,setRank);
call EFUNC(player,setRankpatch);

//Name Stuff
call sixtyone_w28fixes_fnc_player_set_name;

