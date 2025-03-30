/*
	Author: JohnnyShootos (Edited by TheTimidShade)

	Description:
		Kicks the selected player

	Parameters:
		NONE
		
	Returns:
		NONE
*/

disableSerialization;

// elements from ui\elements.hpp
#define IDC_ADMINPANEL_PLAYERLIST_LISTBOX		4825

private _admp_display = uiNamespace getVariable ['admp_displayVar', displayNull];
if (isNull _admp_display) exitWith {}; // check display exists

private _admp_playerlist_listbox = _admp_display displayCtrl IDC_ADMINPANEL_PLAYERLIST_LISTBOX;
private _player = [_admp_playerlist_listbox] call admp_fnc_playerFromSelection; // get selected player

if (isNull _player) exitWith {systemChat "No target found!"; playSound "addItemFailed";}; // if there is no selected target exit

// make sure the player cannot kick themselves
if (_player == player) exitWith {systemChat "You cannot kick yourself!"; playSound "addItemFailed";};

if (call BIS_fnc_admin != 2) exitWith {systemChat "You must be the currently logged in admin to perform this action!"; playSound "addItemFailed";};

private _command = format["#kick %1", name _player];
serverCommand _command;

