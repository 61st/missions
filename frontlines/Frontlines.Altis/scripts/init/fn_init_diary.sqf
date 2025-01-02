#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add diary records.
 *
 * Example:
 * call ymf_fnc_init_diary
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};
waitUntil {profileName != ""};
if (!isNil{player getVariable QEGVAR(player,documents)}) exitWith {SHOW_WARNING_1("initDiary", "Diary Records already applied for %1.", player)};

INFO_1("initDiary", "Applying Diary Records to %1...", player);


player setVariable [QEGVAR(player,documents), true];
