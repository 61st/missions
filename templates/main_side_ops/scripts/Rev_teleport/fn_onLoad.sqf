/*
 * Author: Reeveli
 * Part of Reeveli's teleport system.
 * Function to handle onLoad EH.
 * Called from dialog 'Rev_tp_dialog'
 *
 * Arguments:
 * 0: Control <CONTROL>
 *
 * Return Value: NONE
 *
 * Example:
 * [_control] call Rev_tp_fnc_onLoad
 *
 */

params [
	["_control",controlNull,[controlNull]]
];

if !(hasInterface) exitWith {false};

private _list = missionNamespace getVariable ["Rev_tp_list",[]];
private ["_object", "_name","_side","_index"];
{
	_object = _x # 0;
	_name = _x # 1;
	_side = _x # 2;
		
	_index = _control lbAdd _name;
	_control lbSetData [_forEachindex,_name];

} forEach _list;

//Target marker
private _target_pos = createMarkerLocal ["Rev_tp_marker",[0,0,0]];

"Rev_tp_marker" setMarkerShapeLocal "ICON";
"Rev_tp_marker" setMarkerTypeLocal "respawn_inf";
"Rev_tp_marker" setMarkerColorLocal ([side player,true] call BIS_fnc_sideColor);
"Rev_tp_marker" setMarkerAlphaLocal 0;

_control lbSetCurSel 0;