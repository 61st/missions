#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function runs on postInit unsceduled via made sure by postInitProxy
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Example:
 * call Scripts_fnc_gear_postInit
 *
 */

if (hasInterface) then {
    ["ace_arsenal_displayClosed", {
        player call EFUNC(gear,saveLoadout);
    }] call CBA_fnc_addEventHandler;
    
    [QEGVAR(gear,applyLoadout), {
        _this params [
            ["_unit", objNull, [objNull]],
            ["_loadout", "", [""]]
        ];
        _loadout = if (_loadout == "") then {[_unit] call EFUNC(gear,selectLoadout)} else {_loadout};
        [_unit, _loadout] call EFUNC(gear,applyLoadout);
    }] call CBA_fnc_addEventHandler;
};