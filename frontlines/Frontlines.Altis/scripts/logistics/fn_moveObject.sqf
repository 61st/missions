#include "..\script_component.hpp";
/*
	File: fn_moveObject.sqf
	Author: Dom
	Description: Starts the process of moving an object
*/
params [
	["_object",objNull,[objNull]]
];

YMF_canBuild = false;
YMF_buildAction = 0;
if !(YMF_preserveBuildData) then {
	YMF_alignToTerrain = true;
	YMF_buildElevation = 0;
	YMF_buildRotation = 0;
};

private _class = typeOf _object;
deleteVehicle _object;
([_class] call YMF_fnc_setupBuild) params ["_previewObject","_objectPreviewSpheres","_collisionZone","_actions"];

[YMF_fnc_buildLoop,0,[_previewObject,_objectPreviewSpheres,_collisionZone,_actions,_class,[0,0,0],"true",true]] call CBA_fnc_addPerFrameHandler;