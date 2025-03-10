#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function is used to apply a rank to a player.
 *
 * Arguments:
 * 0: Player <STRING>
 *
 * Return Value:
 * BIS Rank
 *
 * Example:
 * [bob] call YMF_fnc_player_setRank;
 *
 */

params [["_player", objNull, [objNull]]];

if (!GVAR(isPlayer)) exitWith {};
waitUntil {!isNull player && player == player};

private _rank = 'private';

_rank = [_player, 'BIS'] call EFUNC(player,getRank);


if (_rank in ['private','CORPORAL','SERGEANT','LIEUTENANT','CAPTAIN','MAJOR','COLONEL']) then {
    _player setRank _rank;
};

SETVAR(_player,EGVAR(Player,rank), _rank);
_rank