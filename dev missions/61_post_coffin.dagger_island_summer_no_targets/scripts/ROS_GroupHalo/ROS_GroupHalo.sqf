/*
ROS Group Halo from a moveable C130 - by Rickoshay (c) V1.5

Description
===========
The ROS Halo system is a more immersive HALO insertion to the default Halo systems whereby you are just telported into the air. This system allows players and AI to Halo from a moveable C130 aerial insertion point.

Some of the main features are:

* Realistic sound and lighting effects
* C130 ramp opens with sfx (configurable)
* Red / Green light GO condition (lights on during the day as well)
* Moveable C130 based on map click position
* Auto save and restore inventory after landing
* Groups of players with or without AI team members can jump at the same time
* ROS Group Halo supports up to 15 paratroopers per drop (max positions in C130)
* Default parachute can be changed based on which chute mod is being used ie BHZ parachutes etc
* Manual or auto deploy chute at 150m (adjustable below)
* Option to parachute with smoke trails. See ROS_ParaSmoke.sqf for more smoke options
* Optionally leave the C130 ramp open after the first jump for faster successive jumps
* Option to increase total and object view distance (can negatively impact fps)
* Mod dependency - Required: Cup Core for the C130 and Optionally: BHZ parachutes or similar chute mod

Method
======
All group units (players and AI) within 52m of the player who used the Halo addaction can jump at the same time.
The ramp will then open with sfx and lights - then the AI will run out the back and Halo followed by the players.
The maximum number of units per jump is 15 (limited by number of available positions in the back of the C130).
Players can move around in the plane prior to jumping - or jump backwards etc.
If there is a Halo jump currently taking place (i.e. plane busy) the action to jump will not be availble until the plane is cleared - normally with would be a wait time of just a few seconds.

Mobile Insertion point
======================
A second action placed on the laptop (or similar object) allows the player to move the C130 to any Halo position prior to jumping. The C130 is a mobile aerial insertion point allowing you to select the optimal position based on your objective needs. If AI in your group allow for wind direction and velocity when setting the C130 position so that AI move towards the IP.

Legal Stuff
===========
If you use the ROS Group Halo system in your mission you need to credit me in your mission and on the Steam Workshop.
Any derivative script(s) based on the ROS Group Halo system must contain original credit to Rickoshay. Thanks for your support.

Usage and Mod dependency - Cup Core
===================================
Copy the ROS_GroupHalo folder to your mission folder.
Add a static C130 from the Cup Core mod and name it C130 then set it at a suitable altitude i.e. >=1000m

Required
========
1) Add the following two action to a laptop or other suitable object and change the C130 variable name below to the var name you gave the C130 in Editor:
object addAction [title, script, arguments, priority, showWindow, hideOnUse, shortcut, condition, radius, unconscious, selection, memoryPoint]

this addAction ["<t color='#ff9900'>HALO C130</t>",{params ["_target", "_caller"]; [_caller, C130] execVM "scripts\ROS_GroupHalo\ROS_GroupHalo.sqf"},[],1.5,false,false,"","player distance _target <3 && count (((position C130) nearObjects ['CAManBase', 10]) select {alive _x}) ==0"];
this addAction ["<t color='#b2ff66'>Move C130</t>",{[C130] execVM "scripts\ROS_GroupHalo\ROS_MoveHaloPlane.sqf"},[],1.4,false,false,"","player distance _target <3 && count (((position C130) nearObjects ['CAManBase', 10]) select {alive _x}) ==0"];



2) Add the following line to the init field of the C130:

[this] execvm "scripts\ROS_GroupHalo\c130LightsandEngine.sqf";

3) Add the following code to your initPlayerLocal.sqf file:

[missionNamespace, "arsenalOpened", {
	player setVariable ["PlayerReady",false,true];
}] remoteExecCall ["BIS_fnc_addScriptedEventHandler", [0, -2] select isDedicated];
[missionNamespace, "arsenalClosed", {
	player setVariable ["PlayerReady",true,true];
}] remoteExecCall ["BIS_fnc_addScriptedEventHandler", [0, -2] select isDedicated];
player setVariable ["PlayerReady",true,true];

4) Add the sound classes to CFGSounds in your description.ext - see example description.ext for reference.

Optional
========
Weather and wind report:
Place the following addaction on a laptop or similar object's init field.

this addAction ["<t color='#3399ff'>Weather Report</t>", "scripts\ROS_GroupHalo\ROS_weatherReport.sqf",[], 1.3, false, false,"","_this distance _target < 3"];

private _lxifWEATHER = [
    "lxifweather",
    "Weather Report",
    "", {
        "scripts\ROS_GroupHalo\ROS_weatherReport.sqf"
    }, {true}, {},
    [_area]
] call ACE_interact_menu_fnc_createAction;

[this, 0, ["ACE_MainActions"], _lxifWEATHER] call ACE_interact_menu_fnc_addActionToObject;


=======
Leave the ramp down after the first Halo jump (speeds up subsequent Halo jumps)*/
_leaveRampOpen = true;

// Default parachute (player)
_chute = "B_Parachute"; // "BHZ_Para_US_Pack", "BHZ_Para_UK_Pack"; (BHZ parachutes mod)

// Maunally deploy chute or auto open?
_manualOpen = true;

// If auto open chute selected above - what altitude should player chutes open? (minimum is 120 default 150)
_deployAlt = 150;

// Enable coloured smoke attached to player (See ROS_ParaSmoke.sqf for more smoke options)
_enableSmoke = false;

// Disable AI Fatigue - useful if there are AT/AA slower units in group
_disableAIfatigue = true;

// Maximum distance units can be from the player using the addaction - in order to be selected to HALO jump with the player
// Note: players uning the arsenal will not be selected to jump - no matter how close they are. You shouldnt need to adjust this figure
_callDistance = 52; // default 52m

// Set viewDistance and ObjectViewDistance (impacts FPS and maybe overridden by the server in MP - typical VD is <5000 and Object VD <2500)
_changeVD = true;

// Values below are only applied if the above option is true (Note server may overide these values)
_viewDist = 10000;
_objViewDist = 2500;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////// DONT CHANGE ANYTHING BELOW THIS LINE //////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

params ["_player", "_plane"];

// This script is run on the callers machine

_index = 0;
_aiUnits = [];
_players = [];
_haloUnits = [];
_curWind = wind;

// Reduce wind
_wx = _curWind select 0;
_wy = _curwind select 1;
[[_wx/3, _wy/3, true]] remoteExec ["setWind",2];

// Adjust view distance on client in SP. Note: In MP it will be overridden by the server - see server config
if (_changeVD) then {
	[_viewDist] remoteExec ["setViewDistance", 0];
	[_objViewDist] remoteExec ["setObjectViewDistance", 0];
};

// Check C130 altitude is greater than 750m (minimum)
_posPlane = getPos _plane;
_altPlane = _posPlane select 2;
if (_altPlane <750) then {
	_posPlane set [2, 750];
	_plane setPos _posPlane;
};

// Check _deployAlt is not below min 130m or above C130 alt-200
_c130Alt = getPosATL _plane select 2;
if (_deployAlt <130 or _deployAlt > _c130Alt -200) then {_deployAlt = 150};

// Create a list of all eligible AI group units near the player (within the callDistance) - max 15 units && the player must be AI group leader
_nearAIUnits = allUnits select {!isplayer _x && leader _x == _player && _x distance _player < _callDistance && group _x == group _player && isTouchingGround _x && vehicle _x == _x};

// Create a group of all nearby group players that are ready ie not in the VA
_nearPlayers = allPlayers select {_x distance _player < _callDistance && group _x == group _player && isTouchingGround _x && vehicle _x == _x && _x getVariable ["PlayerReady",false]};

// Select the first 15 units (max)
{if (_foreachindex <=15) then {_haloUnits pushBack _x}} foreach (_nearAIUnits + _nearPlayers);

// Check units currently in the C130 - ie Halo busy ---> EXIT
_inPlane = allUnits select {side _x == side _player && _x distance _plane < 10};
if (count _inPlane >0) exitWith {["THE C130 IS BUSY RIGHT NOW\nTry again in a few seconds"] remoteExec ["hint", _player];};

//// AI UNITS - Create array ////
{if (!isplayer _x) then {_aiUnits pushback _x}} foreach _haloUnits;

//// PLAYER UNITS - Create array ////
_players = _haloUnits - _aiUnits;

// Reorientate Plane to face away from nearest enemy within 2km if they exist
_punit = (_players select 0);
_eSides = _punit call BIS_fnc_enemySides;
_nearestEnemies = (nearestObjects [player, ["CAManBase"], 2000]) select {side _x in _esides && alive _x};
_nearestEnemy = _nearestEnemies select 0;
if (count _nearestEnemies >0) then {_plane setdir (_plane getdir _nearestEnemy)};

// Disable AI Fatigue - useful if there are AT/AA slower units
if (_disableAIfatigue) then {
	{if (local _x) then { _x enableFatigue false}} forEach _aiUnits;
};

// Fade out screen during teleport, reposition, stance, orientation, loadout switch etc
[_players] spawn {
 	params ["_players"];
 	[["TRANSFERRING TO THE C130", "BLACK", 1]] remoteExec ["cuttext", _players];
 	sleep 1;
};

sleep 1;

// 15 positions in C130
_attachpositions = [
	[-0.9,-7,-4.85], // L back
	[-0.1,-7,-4.85], // C
	[0.9,-7,-4.85], // R
	[-0.9,-5,-4.85], // L
	[-0.1,-5,-4.85], // C
	[0.9,-5,-4.85], // R
	[-0.9,-3,-4.85], // L
	[-0.1,-3,-4.85], // C
	[0.9,-3,-4.85], // R
	[0.9,-1,-4.85], // L
	[-0.1,-1,-4.85], // C
	[-0.9,-1,-4.85], // R
	[-0.9,1,-4.85], // L
	[-0.1,1,-4.85], // C
	[0.9,1,-4.85] // R front
];

//// Reorder array so players are at back of plane (otherwise AI will run through players)
_haloUnits = [];
{_haloUnits pushBack _x} forEach _players;
{_haloUnits pushBack _x} forEach _aiUnits;

// Save all group unit loadouts
{_inv = name _x; [_x, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_SaveInventory;} foreach _haloUnits;

/////////////////////////////////////////////////////////////////////

// Remove backpack and add default chute
{removeBackpackGlobal _x; _x addBackpackGlobal _chute;} forEach _haloUnits;

// Transfer all Halo (AI and player) units to plane
{
	if (local _x) then {_x allowDamage false};
	_selectedPos = (_attachpositions select _foreachindex);
	[_x,"up"] remoteExec ["setUnitPos", _x];
	if (!isplayer _x) then {_x disableAI "anim"};
	[_x, "HubStandingUA_idle1"] remoteExec ["switchMove"];
	[_x, false] remoteExec ["enableSimulationGlobal",2];
	_x attachTo [_plane, _selectedPos];
	if (_enableSmoke) then {
		[[_x],"scripts\ROS_GroupHalo\ROS_ParaSmoke.sqf"] remoteExec ["execVM", _x];
	};
	sleep 0.1;
	[_x, true] remoteExec ["enableSimulationGlobal",2];
} forEach _haloUnits;

sleep 1;
[["", "BLACK IN", 5]] remoteExec ["cuttext", _players];

sleep 0.5;

// 10 second warning
if (_plane animationPhase "ramp_bottom" < 0.2) then {["10secs"] remoteExec ["playSound", _players]};

// Let players move around after positioning AI
{
	detach _x;
	[_x, "amovpercmstpslowwrfldnon"] remoteExec ["switchmove", _x];
	[_x, "up"] remoteExec ["setUnitPos", _x];
} forEach _players;

if (_plane animationPhase "ramp_bottom" < 0.2) then {sleep 5};

// Open c130 ramp - rampopen 10secs
if (_plane animationPhase "ramp_bottom" < 0.2) then {
	["rampopen"] remoteExec ["playSound", _players];
	["doorwind"] remoteExec ["playSound", _players];
};

// AnimationName, phase, speed
if (_plane animationPhase "ramp_bottom" < 0.2) then {
	_plane animate ["ramp_top",1,0.7];
	_plane animate ["ramp_bottom",1,0.7];
};

if (_plane animationPhase "ramp_bottom" < 0.2) then {sleep 6};

// Change light colour - see scripts\ROS_GroupHalo\c130LightsandEngine.sqf
[lightR, [0,0.2,0.1]] remoteExec ["setLightAmbient", 0];
[lightR, [0,0.4,0.1]] remoteExec ["setLightColor", 0];

sleep 1;

// Detach NPC's and run them out with some random velocity
if (count _aiUnits > 0) then {
	reverse _aiUnits;
	_numAI = count _aiUnits;
	{
		[_x, _foreachindex, _numAI] spawn {
			params ["_x", "_idx", "_numAI"];
			detach _x;
			_sign = 1;
			_dir = 0;
			if (random 1 <0.5) then {_sign = 1} else {_sign = -1};

			if (local _x) then {
				[_x, "AmovPercMrunSnonWnonDf"] remoteExec ["switchmove"]; // AmovPercMrunSnonWnonDf 0.8 run
				waitUntil {animationState _x == "HaloFreeFall_non"};
				_rndx = (10 + (random 10 * _sign));
				_rndy = (5 + random 20);
				_rndz = 7 + random -10;
				_dir = (direction _x) + (_sign * 10);
				// Make them jump slightly when they exit ramp and spread them out to avoid collisions
				[_x, [_rndx * (sin _dir), _rndy * (cos _dir), _rndz]] remoteExec ["setvelocity",_x];
				//sleep 2.5; // run anim 0.8x2
				_x enableAI "anim";
				waitUntil {getPosATL _x select 2 <350};
				[_x] remoteExec ["removebackpack", 0];
				waitUntil {getPosATL _x select 2 <=100};
				_pos = getPosATL _x;
				_chute = createVehicle ["NonSteerable_Parachute_F", _pos, [], 0, "fly"];
				//_chute setdir (_chute getDir (getMarkerPos "Marker_C130")) +random 50;
				_x moveInDriver _chute;
			};
		};
		// interleave delay - to limit collisions min = 0.2 based on testing with other mods and 14 units.
		sleep 0.25;
	} foreach _aiUnits;
};

waitUntil {_player distance _plane > 30};

// Manual chute deployment
if (_manualOpen) then {
	{if (animationState _x != "para_pilot") then {["REMINDER!\nDeploy your chute at around 140m"] remoteExec ["hint", _x]}} foreach _players;
} else {
	{if (animationState _x != "para_pilot") then {["Chute will auto deploy around 130m"] remoteExec ["hint", _x]}} foreach _players;
};

ROS_OpenChute_fnc = {
	params ["_unit", "_deployAlt"];
	[_unit, _deployAlt] spawn {
		params ["_unit", "_deployAlt"];
		waitUntil {(getPosATL _unit select 2) <=_deployAlt};
		_unit action ["openParachute", _unit];
	};
	true
};

// Auto deploy chutes
if !(_manualOpen) then {
	{
		[_x, _deployAlt] remoteExecCall ["ROS_OpenChute_fnc", _x];
	} forEach _players;
};

// Close doors and change light colour
if !(_leaveRampOpen) then {
	_plane animate ["ramp_top",0,0.7];
	_plane animate ["ramp_bottom",0,0.7];
	[_plane, "rampopen"] remoteExec ["say3D", _players];
	// Change light colour
	[lightR, [0.2,0,0]] remoteExec ["setLightAmbient", 0];
	[lightR, [1,0.1,0]] remoteExec ["setLightColor", 0];
};

// Load player inventory on landing

{
	[_x] spawn {
	params ["_player"];
		//Load Inventory when on ground
		waitUntil {(getposatl _player select 2) < 2 or isTouchingGround _player};
		_inv = name _player;
		[_player, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_LoadInventory;
	};
} foreach _players;

// Load AI inventory on landing
{
	if (local _x) then {
		[_x, _player] spawn {
			params ["_unit", "_player"];
			waitUntil {(getposatl _unit select 2) < 1 or isTouchingGround _unit};
			_inv = name _unit;
			[_unit, [missionNamespace, format["%1%2", "inventory",_inv]]] call BIS_fnc_LoadInventory;
			_unit allowDamage true;
			_unit enableAI "anim";
		};
	};
} forEach _aiUnits;

// Wait until all Halo units are on the ground
waitUntil {{isTouchingGround _x} foreach _haloUnits};

// Reset original wind speed and direction on server = global effect
[[_curWind select 0, _curwind select 1,true]] remoteExec ["setWind",2];

if (true) exitWith {};
