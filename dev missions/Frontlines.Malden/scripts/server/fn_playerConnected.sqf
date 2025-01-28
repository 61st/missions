/*
	File: fn_playerConnected.sqf
	Author: Dom
	Description: Handles a players connection
*/
params ["_id","_uid","_name","_jip","_owner","_idstr"];

if (missionNamespace getVariable ["YMF_currentPlaytime",0] isEqualTo 0) then {
	YMF_currentPlaytime = CBA_missionTime;
};