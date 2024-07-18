#include "..\script_component.hpp";
params [
	["_desiredRole","rifleman",[""]],
	["_isRespawn",false,[true]]
];

private _roleConfig = missionConfigFile >> "Dynamic_Roles" >> _desiredRole;
private _defaultLoadout = getArray(_roleConfig >> "defaultLoadout");

if (_isRespawn) then {
	player setUnitLoadout (missionNamespace getVariable ["YMF_savedLoadout",_defaultLoadout]);
} else {
	YMF_savedLoadout = _defaultLoadout;
	player setUnitLoadout _defaultLoadout;
	
	private _items = getArray(_roleConfig >> "arsenalItems");
	_items append getArray(missionConfigFile >> "Common_Arsenal" >> "items");

	[player,true,false] call ace_arsenal_fnc_removeVirtualItems;
	{
		[player,_x,false] call ace_arsenal_fnc_addVirtualItems;
	} forEach [_items];
	private _roleName = getText(_roleConfig >> "name");
	[_roleName,_defaultLoadout] call ace_arsenal_fnc_addDefaultLoadout;

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
	} forEach (missionNamespace getVariable ["YMF_myCustomVariables",[]]);

	YMF_myCustomVariables = [];
	{
		_x params ["_variable","_value","_global"];
		if (_value in ["true","false"]) then {_value = call compile _value};
		player setVariable [_variable,_value,call compile _global];
		YMF_myCustomVariables pushBack _variable;
	} forEach _customVariables;

	player setVariable ["YMF_role",_desiredRole,true];

	/* Team stuff ------------------------------------------------------------------------------------------------------- */
	_playerTColor = player getVariable "YMF_teamcolor";
	player assignTeam _playerTColor;

	/* /rank stuff ------------------------------------------------------------------------------------------------------ */
	[player, 'BIS'] call EFUNC(player,setRank);
	call EFUNC(player,setRankpatch);

	/* Name Stuff ------------------------------------------------------------------------------------------------------- */
	call LXIM_w28fixes_fnc_player_set_name;
};

