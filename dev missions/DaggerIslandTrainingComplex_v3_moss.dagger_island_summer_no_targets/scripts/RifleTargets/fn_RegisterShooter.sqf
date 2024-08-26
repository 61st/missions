/*
	Author: Mossarelli

	Description:
	Function called by the sign with the action that registers the shooter with name and score variable.

	Parameter(s):
		0: The name of the object the Action is on.
		1: Object using the action
		2: ID of the Action being Used
		3: Logic Object

	Returns:
	N/A
*/

private ["_name","_caller","_id","_logic"];
_name = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_logic = _this select 3;

//Get the current registered lane variable.
_logicName = player GetVariable ["MossPlayerLogicName",""];

//Make sure the player is unregistered from the first lane first.
if ( !( str (_logicName) == str (""))) exitWith
{
	systemChat "You are already registered to a lane! Unregister first!";
};

//Reset score.
player setVariable ["MossShooterScoreInfo",[player],false];

//Assign lane to player.
player setVariable ["MossPlayerLogicName",_logic,false];

//Make a global message for everyone to see.
call compile format ['
	[{ systemChat "%1: %2 Registered. Score Reset."; }, "BIS_fnc_Spawn", true, false, false] call BIS_fnc_MP;
	',(_logic getVariable "MossRangeNumber"),(name _caller)
];