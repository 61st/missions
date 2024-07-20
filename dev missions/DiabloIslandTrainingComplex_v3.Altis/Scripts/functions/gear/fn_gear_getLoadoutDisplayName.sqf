#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV 
* This function return a units current loadouts displayname.
 *
 * Arguments:
 * 0: Unit <Object>
 *
 * Return Value:
 * Loadout name <STRING>
 *
 * Example:
 * [player] call Scripts_fnc_gear_getLoadoutDisplayName;
 * [cursorObject] call Scripts_fnc_gear_getLoadoutDisplayName;
 *
 */

params [["_unit", objNull, [objNull]]];

private _loadout = [_unit] call EFUNC(gear,getLoadoutName);

private _missionConfig = missionConfigFile >> "CfgLoadouts" >> _loadout;
private _displayName = getText (_missionConfig >> "displayName");

if (_displayName == "") then {
    private _config = configFile >> "CfgLoadouts" >> _loadout;
    _displayName = getText (_config >> "displayName");
};

_displayName