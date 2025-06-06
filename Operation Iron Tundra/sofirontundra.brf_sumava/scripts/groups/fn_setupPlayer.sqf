#include "..\script_component.hpp";
params [
    ["_desiredRole","rifleman",[""]],
    ["_isRespawn",false,[true]]
];

private _roleConfig = missionConfigFile >> "Dynamic_Roles" >> _desiredRole;
private _defaultLoadout = getArray(_roleConfig >> "defaultLoadout");

if (_isRespawn) then {
        private _loadout = [player] call EFUNC(gear,loadLoadout);
        [player, _loadout] call EFUNC(gear,applyLoadout);
        if (player call YMF_fnc_player_isCurator) then {
            [player,true] call lxim_curator_fnc_assignZeus;
            [true, true] call acre_api_fnc_godModeConfigureAccess;
            [player,true] call admp_fnc_grantAdminAccess;
        } else {
            [player,false] call lxim_curator_fnc_assignZeus;
            [false, false] call acre_api_fnc_godModeConfigureAccess;
        };  
} else {
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


    if ((player getVariable ["ACE_medical_medicClass", 0]) == 0) then {
        #include "..\..\config\config_clslist.hpp"
        if ((getPlayerUID player) in _CLSUID) then {
            player setVariable ["ace_medical_medicclass", 1, true];
            systemChat format ["CLS Skills Applied to %1!", name player];
        };
    };
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
    [player, 'BIS'] call EFUNC(player,setRank);
    call EFUNC(player,setRankpatch);

    /* Name Stuff ------------------------------------------------------------------------------------------------------- */
    call LXIM_w28fixes_fnc_player_set_name;

    /*  ----------------------------------------------------------------------------------------------------------- */
    [{[] call acre_api_fnc_isInitialized}, {
                INFO_1("GearRadio" "Setting up ACRE primary radio and channels for %1...", player);
                systemChat  "Setting up ACRE primary radio and channels";
                [player] call FUNC(setRadioChannel);
                ["ACRE_PRC148"] call FUNC(setActiveRadio);
    }, []] call CBA_fnc_waitUntilAndExecute;

    player call EFUNC(gear,saveLoadout);
};