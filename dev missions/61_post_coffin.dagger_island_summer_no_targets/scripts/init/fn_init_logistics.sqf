#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function initzializes the logistical database
 *
 * Return Value:
 * HashMap
 *
 * Example:
 * call lxif_fnc_init_logistics
 *
 * Public: No
 */


INFO("Logistics", "Creating logistical database");
private _dataArray = [
    #include "..\..\config\config_loadouts.hpp"
];

private _return = createHashMapFromArray _dataArray;

if (!(_return isEqualType createHashMap)) exitWith {
    SHOW_CHAT_ERROR_1("LogisticsDatabase", "Fatal error creating database (database base type faulty %1)...", typeName _return);
    createHashMapFromArray [["", []]];
};

_return;
