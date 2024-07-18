#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV 
* This function handle all our custom chat commands
 *
 * Example:
 * call Scripts_fnc_init_ChatCommands
 *
 * Public: No
 */

["attendance", {
    [QGVAR(getAttendance)] call CBA_fnc_localEvent;
}, "all"] call CBA_fnc_registerChatCommand;

// Help and diagnostic commands
["Scripts", {
    systemChat format["Scripts version: %1", VERSION];
}, "all"] call CBA_fnc_registerChatCommand;

["loadout", {
    private _name = [player] call EFUNC(gear,getLoadoutDisplayName);
    private _loadout = [player] call EFUNC(gear,getLoadoutName);
    systemChat format["Your current loadout is: %1 [%2]",_name,_loadout];
}, "all"] call CBA_fnc_registerChatCommand;
