/*
 * Author: Reeveli
 * Part of Reeveli's teleport system.
 * Client side function to create ZEN curator modules teleportation system.
 * Called as a preinit
 *
 * Arguments: NONE
 *
 * Return Value: NONE
 *
 * Example:
 * [] call Rev_tp_fnc_addZen_modules
 *
 */

if !(hasInterface) exitWith {};
if !(isClass (configFile >> "CfgPatches" >> "zen_custom_modules")) exitWith {};

[
	"Reeveli's Teleportation system",
	"Add teleport point",
	{[_this select 1] call Rev_tp_fnc_ZEN_dialog},
	"a3\ui_f_curator\data\cfgwrapperui\cursors\curatormove_ca.paa"
] call zen_custom_modules_fnc_register;

[
	"Reeveli's Teleportation system",
	"Open teleport menu",
	{createDialog "Rev_tp_dialog"}
] call zen_custom_modules_fnc_register;