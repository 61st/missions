#include "..\script_component.hpp";
if (!GVAR(isPlayer)) exitWith {};
waitUntil {!isNull player && player == player};

private _profileName = profileName;

_profileName = [_profileName, 0, 2] call BIS_fnc_trimString;
_profileName = toUpper(_profileName);
_playerUID = getplayerUID player;

switch (true) do {
        case (_profileName in ['RET']): {[player,'tweed_UA_OCP_0'] call simc_fnc_setUnitRank;};
        case (_profileName in ['RCT']): {[player,'tweed_UA_OCP_0'] call simc_fnc_setUnitRank;};
        case (_profileName in ['PVT']): {[player,'tweed_UA_OCP_0'] call simc_fnc_setUnitRank;};
        case (_profileName in ['PV2']): {[player,'tweed_UA_OCP_1'] call simc_fnc_setUnitRank;};
        case (_profileName in ['PFC']): {[player,'tweed_UA_OCP_2'] call simc_fnc_setUnitRank;};
        case (_profileName in ['SPC']): {[player,'tweed_UA_OCP_3'] call simc_fnc_setUnitRank;};
        case (_profileName in ['CPL']): {[player,'tweed_UA_OCP_4'] call simc_fnc_setUnitRank;};
        case (_playerUID in (EGVAR(Settings,ranks_corporal))): {[player,'tweed_UA_OCP_4'] call simc_fnc_setUnitRank;};
        case (_profileName in ['SGT']): {[player,'tweed_UA_OCP_5'] call simc_fnc_setUnitRank;};
        case (_playerUID in (EGVAR(Settings,ranks_sergeant))) : {[player,'tweed_UA_OCP_5'] call simc_fnc_setUnitRank;};
        case (_profileName in ['SSG']): {[player,'tweed_UA_OCP_6'] call simc_fnc_setUnitRank;};
        case (_profileName in ['SFC']): {[player,'tweed_UA_OCP_7'] call simc_fnc_setUnitRank;};
        case (_profileName in ['MSG']): {[player,'tweed_UA_OCP_8'] call simc_fnc_setUnitRank;};
        case (_profileName in ['1SG']): {[player,'tweed_UA_OCP_9'] call simc_fnc_setUnitRank;};
        case (_profileName in ['SGM']): {[player,'tweed_UA_OCP_10'] call simc_fnc_setUnitRank;};
        case (_profileName in ['2LT']): {[player,'tweed_UA_OCP_11'] call simc_fnc_setUnitRank;};
        case (_profileName in ['1LT']): {[player,'tweed_UA_OCP_12'] call simc_fnc_setUnitRank;};
        case (_playerUID in (EGVAR(Settings,ranks_lieutenant))): {[player,'tweed_UA_OCP_12'] call simc_fnc_setUnitRank;};
        case (_profileName in ['CPT']): {[player,'tweed_UA_OCP_13'] call simc_fnc_setUnitRank;};
        case (_playerUID in (EGVAR(Settings,ranks_captain))): {[player,'tweed_UA_OCP_13'] call simc_fnc_setUnitRank;};
        case (_profileName in ['MAJ']): {[player,'tweed_UA_OCP_14'] call simc_fnc_setUnitRank;};
        case (_playerUID in (EGVAR(Settings,ranks_major))): {[player,'tweed_UA_OCP_14'] call simc_fnc_setUnitRank;};
        case (_profileName in ['LTC']): {[player,'tweed_UA_OCP_15'] call simc_fnc_setUnitRank;};
        case (_profileName in ['COL']): {[player,'tweed_UA_OCP_16'] call simc_fnc_setUnitRank;};
        case (_playerUID in (EGVAR(Settings,ranks_colonel))): {[player,'tweed_UA_OCP_16'] call simc_fnc_setUnitRank;};
        default {[player,'tweed_UA_OCP_0'] call simc_fnc_setUnitRank;};
    };


