#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV 
* This function return your role
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Role <STRING>
 *
 * Example:
 * call Scripts_fnc_gear_getLoadoutRole
 *
 */

private _return = "soldier";

private _loadout = GETVAR(player,EGVAR(Gear,loadoutClass),typeOf player);

private _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
private _role = getText (_config >> "role");
if (_role != "") then {_return = _role};

_return