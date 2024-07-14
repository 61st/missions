#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A -- Tinkered with by YonV tinkered with by YonV
 * This function print messages on player connect.
 *
 * Example:
 * call YMF_fnc_init_message
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};
if (!isMultiplayer || {is3DENMultiplayer}) exitWith {};
if (!isNil{player getVariable QEGVAR(player,message)}) exitWith {};

if (difficulty != 2) then {
    systemChat "[YMF] (Difficulty) WARNING: Mission difficulty is not set to Veteran." 
};

player setVariable [QEGVAR(player,message), true];
