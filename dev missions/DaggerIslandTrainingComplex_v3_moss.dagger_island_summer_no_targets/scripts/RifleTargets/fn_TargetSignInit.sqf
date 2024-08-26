/*
	Author: Mossarelli

	Description:
	Function called by the sign with the action that registers the shooter with name and score variable.

	Parameter(s):
		0:	Sign or Object that should get the addActions
		1:	Name of Logic associated with Lane.

	Returns:
	N/A
*/

private ["_object","_logic"];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_logic = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_monitor = [_this, 2, objNull, [objNull]] call BIS_fnc_param;

//Init the range name:
_lane = [_Logic] call Moss_fnc_GetRangeName;
if (_lane == "") then
{
	[
		format ["Error: The lane for logic: %1 has no name defined in RangeNamesConfig.txt!",_logic]
	] call BIS_fnc_errorMsg;
};

//Make object stationary:
_object allowDamage false;
_object enableSimulation false;

//Add Actions to sign.
_object addAction [("<t color=""#FFFF66"">" + ("Register Rifleman") + "</t>"),Moss_fnc_RegisterShooter,_logic];
_object addAction [("<t color=""#FFFF66"">" + ("Show Score") + "</t>"),Moss_fnc_ShowScore,_logic];
_object addAction [("<t color=""#FFFF66"">" + ("Reset my Score") + "</t>"),Moss_fnc_ResetScore,_logic];
_object addAction [("<t color=""#FFFF66"">" + ("Unregister rifleman") + "</t>"),Moss_fnc_UnregisterShooter,_logic];