/*
    Author: JohnnyShootos (Edited by TheTimidShade)

    Description:
        Enables sixone mode on selected unit (hides model and disables collision)

    Parameters:
        NONE
        
    Returns:
        NONE
*/

disableSerialization;

// elements from ui\elements.hpp
#define IDC_ADMINPANEL_PLAYERLIST_LISTBOX 4825

#define IDC_ADMINPANEL_UTILITIES_SIXONE_BACK 4356
#define IDC_ADMINPANEL_UTILITIES_SIXONE 4934

// colour macros // [0.98,0.69,0.25,1]
#define COL_BUTTON_TEXT_ACTIVE [1,1,1,1]
#define COL_BUTTON_TEXT_INACTIVE [1,1,1,1]
#define COL_BUTTON_ACTIVE [0.98,0.69,0.25,1]
#define COL_BUTTON_INACTIVE [0,0,0,0]

private _admp_display = uiNamespace getVariable ['admp_displayVar', displayNull];
if (isNull _admp_display) exitWith {}; // check display exists

private _admp_playerlist_listbox = _admp_display displayCtrl IDC_ADMINPANEL_PLAYERLIST_LISTBOX;
private _player = [_admp_playerlist_listbox] call admp_fnc_playerFromSelection; // get selected player

if (isNull _player) exitWith {systemChat "No target found!"; playSound "addItemFailed";}; // if there is no selected target exit

private _sixone_ctrl = _admp_display displayCtrl IDC_ADMINPANEL_UTILITIES_SIXONE;
private _sixone_back = _admp_display displayCtrl IDC_ADMINPANEL_UTILITIES_SIXONE_BACK;

//private _sixone = !(_player getVariable ["admp_isVisible", false]);
private _sixone = _player in admp_utilities_sixone_enabledUnits;

if (!_sixone) then {
    [_player, true] remoteExec ["hideObjectGlobal", 2, false];
    _player setCaptive true;
    admp_utilities_sixone_enabledUnits pushBackUnique _player;
    
    systemChat format ["Enabled sixoneing for %1!", name _player];
    playSound "3DEN_notificationDefault";
    
    _sixone_ctrl ctrlSetTextColor COL_BUTTON_TEXT_ACTIVE;
    _sixone_back ctrlSetBackgroundColor COL_BUTTON_ACTIVE;

    if (_player != player) then { // show selected player a message
        _message = format ["%1 enabled sixoneing on you!", name player];
        [_message] remoteExec ["systemChat", _player, false];
    };
} else {
    [_player, false] remoteExec ["hideObjectGlobal", 2, false];
    _player setCaptive false;
    admp_utilities_sixone_enabledUnits deleteAt (admp_utilities_sixone_enabledUnits find _player);
    
    systemChat format ["Disabled sixoneing for %1!", name _player];
    playSound "3DEN_notificationDefault";
    
    _sixone_ctrl ctrlSetTextColor COL_BUTTON_TEXT_INACTIVE;
    _sixone_back ctrlSetBackgroundColor COL_BUTTON_INACTIVE;

    if (_player != player) then { // show selected player a message
        _message = format ["%1 disabled sixoneing on you!", name player];
        [_message] remoteExec ["systemChat", _player, false];
    };
};

publicVariable "admp_utilities_sixone_enabledUnits";