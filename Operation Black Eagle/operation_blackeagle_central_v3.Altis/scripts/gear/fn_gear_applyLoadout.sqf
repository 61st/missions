#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function apply a player loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Loadout <CLASSNAME / VARIABLE / LOADOUT ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player, "Variable_Name"] call YMF_fnc_gear_applyLoadout
 *
 */

params [
    ["_unit", objNull, [objNull]],
    "_loadout"
];

private _config     = configNull;
private _loadArray  = _loadout isEqualType [];
private _loadConfig = _loadout isEqualType "";

// Set loadout
switch (true) do {
    case _loadArray: {
        [_unit, _loadout] call CBA_fnc_setLoadout;
        INFO_2("Gear", "Loadout array applied to %1 [%2]", _unit, typeOf _unit);
    };
    case _loadConfig: {
        _loadout = getText (_config >> "loadout");
        private _classname = configName _config;
        if (_loadout != "") then {
            _loadout = parseSimpleArray _loadout;
            [_unit, _loadout] call CBA_fnc_setLoadout;
            INFO_3("Gear", "Loadout config %1 applied to %2 [%3]", _classname, _unit, typeOf _unit);
        } else {
            SHOW_CHAT_WARNING_1("Gear", "No loadout discoverd nothing will be applied for %1.", _unit);
        };
    };
};