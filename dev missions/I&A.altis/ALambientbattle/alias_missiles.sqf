// by ALIAS
// nul = [missiles_object_name] execVM "scripts\ALambientbattle\alias_missiles.sqf";

private ["_main_missiles_object"];

if (!isServer) exitWith {};

_main_missiles_object = _this select 0;

if (!isNil {_main_missiles_object getVariable "is_ON"}) exitwith {};
_main_missiles_object setVariable ["is_ON",true,true];

// make variable below false if you want to stop the loop and remove missle effect
al_missile = true; publicVariable "al_missile";

[[_main_missiles_object],"scripts\ALambientbattle\alias_missiles_effect.sqf"] remoteExec ["execVM",0,true];