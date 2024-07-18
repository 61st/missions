#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function setup the staging system and automaticly creates respawn marker staging zones.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call YMF_fnc_init_staging
 *
 * Public: No
 */

if !(EGVAR(Settings,enableStagingSystem)) exitWith {};

INFO("Staging", "Setting up Staging");

private _stagingZoneMarkers = [];
{
    private _markerName = [_x, 0, 11] call BIS_fnc_trimString;
    _markerName = toLower _markerName;
    if (_markerName in ["zone_staging", "respawn_west", "YMF_staging_zone","TLZ"]) then {
        private _type = markerShape _x;
        private _pos = getMarkerPos _x;
        _x setMarkerAlpha 0;
        _stagingZoneMarkers append [[_x, _type, _pos]];
    };
} forEach allMapMarkers;

{
    _x params["_marker", "_type", "_pos"];
    private _size = if (_type == "ICON") then {60} else {_type};
    private _zone = if (_type == "ICON") then {_pos} else {_marker};
    [_zone, _size] call FUNC(addStagingZone);
} forEach _stagingZoneMarkers;


// Player specific actions
if !(GVAR(isPlayer)) exitWith {};

// Interaction system
private _condition1 = { call FUNC(checkStagingZone) };
private _condition2 = { isNull objectParent player && call FUNC(checkStagingZone) };
private _condition3 = { isNull objectParent player && {player getVariable ["ace_arsenal_virtualItems",[]] isNotEqualTo [] && call FUNC(checkStagingZone)} };
private _conditionr = { isNull objectParent player && {player getVariable ["cav_ranges_instructor",[]] isNotEqualTo [] && call FUNC(checkStagingZone)} };

private _stagingCat = [
	QEGVAR(Actions,StagingCategory), 
	"Staging Zone", 
	"scripts\data\Icon\icon_00.paa", 
	{true}, 
	_condition1
	] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

private _category = ["ACE_SelfActions", QEGVAR(Actions,StagingCategory)];

// addAction notice
player addAction [
    "<img image='scripts\data\Icon\icon_00.paa' /> <t color='#ffc61a'>YMF Staging Zone</t> <img image='scripts\data\Icon\icon_00.paa' />",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [
            [],
            ["Staging Zone", 1.2, [1, 0.776, 0.102, 1]],
            ["You are currently in a staging zone."],
            ["This allow you to change loadouts and so on"],
            ["from your ace self interact."],
            [""],
            [""]
        ] call CBA_fnc_notify;
        playSound "hint";
    }, nil, 10, false, false, "",
    QUOTE(call FUNC(checkStagingZone)),
    0
];

// Menu option
/* group ------------------------------------------------------------------------------------------------------------ */
if EGVAR(patches,usesACE) then {
	private _groupCategory = [
		"groupCategory",
		"Group Menu",
		"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\meet_ca.paa",
		{[] call FUNC(initGroupMenu)},
		_condition2
	] call ace_interact_menu_fnc_createAction;
	[player,1,_category,_groupCategory] call ace_interact_menu_fnc_addActionToObject;

/* heal ------------------------------------------------------------------------------------------------------------- */
	private _healCategory = [
		"healCategory",
		"Heal",
		"\z\ACE\addons\medical_gui\ui\cross.paa",
		{
			[_this select 0, player] call ace_medical_treatment_fnc_fullHeal;
			[[],["You have been healed"], [""], [""]] call CBA_fnc_notify;
		},
		_condition2
	] call ace_interact_menu_fnc_createAction;
	[player,1,_category,_healCategory] call ace_interact_menu_fnc_addActionToObject;


/* arsenal ---------------------------------------------------------------------------------------------------------- */
	private _arsenalCategory = [
		"arsenalCategory",
		"Arsenal",
		"scripts\data\Icon\icon_arsenal_ca.paa",
		{[player,player,false] call ace_arsenal_fnc_openBox},
		_condition3
	] call ace_interact_menu_fnc_createAction;
	[player,1,_category,_arsenalCategory] call ace_interact_menu_fnc_addActionToObject;

	/* TP ---------------------------------------------------------------------------------------------------------- */

	// private _tpCategory = [
	// 	"TPCategory",
	// 	"TP",
	// 	"scripts\data\Icon\Teleport_Pos_64x64.paa",
	// 	{[0] spawn A3U_Teleport_fnc_initStyle0;},
	// 	_condition3
	// ] call ace_interact_menu_fnc_createAction;
	// [player,1,_category,_tpCategory] call ace_interact_menu_fnc_addActionToObject;

	private _tpCategory = [
		"TPCategory",
		"TP",
		"scripts\data\Icon\Teleport_Pos_64x64.paa",
		{createDialog "Rev_tp_dialog"},
		_condition3
	] call ace_interact_menu_fnc_createAction;
	[player,1,_category,_tpCategory] call ace_interact_menu_fnc_addActionToObject;
	};


INFO_1("Staging", "Staging options for %1 have been setup.", name player)
