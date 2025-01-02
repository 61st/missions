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

    if (player call YMF_fnc_player_isCurator) then {
        [player,true] call lxim_curator_fnc_assignZeus;
        [true, true] call acre_api_fnc_godModeConfigureAccess;
        [player,true] call admp_fnc_grantAdminAccess;
    } else {
        [player,false] call lxim_curator_fnc_assignZeus;
        [false, false] call acre_api_fnc_godModeConfigureAccess;
    };

    /* rank stuff ------------------------------------------------------------------------------------------------------ */
    private _rank = [player, 'BIS'] call EFUNC(player,getRank);
    [player, 'BIS'] call EFUNC(player,setRank);
    call EFUNC(player,setRankpatch);

    private _fnc_getRankNumber = {
	params ["_rankString"];

	switch (toUpper _rankString) do {
		case "CORPORAL": {1};
		case "SERGEANT": {2};
		case "LIEUTENANT": {3};
		case "CAPTAIN": {4};
		case "MAJOR": {5};
		case "COLONEL": {6};
		default {0};
	};
};

if ([_rank] call _fnc_getRankNumber > rankId (leader _selectedGroup)) then {
	[_selectedGroup,_unit] remoteExecCall ["selectLeader",groupOwner _selectedGroup];
};

    /* Name Stuff ------------------------------------------------------------------------------------------------------- */
    call LXIM_w28fixes_fnc_player_set_name;

    /*  ----------------------------------------------------------------------------------------------------------- */
    [{[] call acre_api_fnc_isInitialized}, {
                INFO_1("GearRadio" "Setting up ACRE primary radio and channels for %1...", player);
                hint "GearRadio Setting up ACRE primary radio and channels";
                [player] call FUNC(setRadioChannel);
                ["ACRE_PRC148"] call FUNC(setActiveRadio);
            }, []] call CBA_fnc_waitUntilAndExecute;
};