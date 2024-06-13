#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV
 * This function return players that have connected to the server.
 * It will print it to your RPT log.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Array of players
 *
 * Example:
 * call YMF_fnc_getAttendance
 *
 */

private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];

// Rpt 
["=================================================== START", "Attendance"] call FUNC(info);
[format ["Attendance (Entries: %1)", count _playerLog], "Attendance"] call FUNC(info);
{
    _x params ["_name"];
    [_name, "Attendance",  false, false] call FUNC(info);
} forEach _playerLog;

["=================================================== END", false, "Attendence"] call FUNC(info);

["=================================================== START", false, "Attendance"] call LXIM_adminmenu_fnc_log;
[format ["Attendance (Entries: %1)", count _playerLog], false,"Attendance"] call LXIM_adminmenu_fnc_log;
{
    _x params ["_name"];
    [_name, "Attendance",  false, false] call LXIM_adminmenu_fnc_log;
} forEach _playerLog;

["=================================================== END", false, "Attendence"] call LXIM_adminmenu_fnc_log;

// Hint
[
    [],
    ["All attended players have been"],
    ["to your RPT log..."],
    [""],
    [""]
] call CBA_fnc_notify;

_playerLog