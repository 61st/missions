#include "..\script_component.hpp"
/*
 * Author: ACRE2Team, CPL.Brostrom.A
 * Filters unitLoadout for ACRE or TFAR ID classes and replacing them for base classes.
 *
 * Arguments:
 * 0: Loadout <ARRAY or OBJECT or STRING or CONFIG> (default: getUnitLoadout player)
 *
 * Return Value:
 * Loadout <ARRAY>
 *
 * Example:
 * _loadout = [_loadout] call Scripts_fnc_filterUnitLoadout;
 * _loadout = [getUnitLoadout _unit] call Scripts_fnc_filterUnitLoadout;
 * _loadout = [player] call Scripts_fnc_filterUnitLoadout;
 *
 * Public: Yes
 */

params [["_loadout", getUnitLoadout player, [[], objNull, "", configNull]]];

if !(_loadout isEqualType []) then {
    _loadout = [_loadout] call CBA_fnc_getLoadout;
};

if (_loadout isEqualTo []) exitWith {
    _loadout;
};

private _baseLoadout = _loadout;
if (EGVAR(Patches,usesACEAX)) then {
    _baseLoadout = _loadout#0;
};

if (EGVAR(Patches,usesACEAX)) then {
    _loadout set [0,_baseLoadout];
};

_loadout