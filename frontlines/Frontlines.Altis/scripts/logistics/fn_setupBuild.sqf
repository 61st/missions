#include "..\script_component.hpp";
/*
	File: fn_setupBuild.sqf
	Author: Dom
	Description: Creates the preview object, collision zone and actions. Returns build data for the build loop
*/
params [
	["_className","",[""]],
	["_cancelAction",false,[true]]
];

private _previewObject = _className createVehicleLocal [0,0,0];
private _collisionZone = (boundingBox _previewObject select 2) max 3;

_previewObject allowDamage false;
_previewObject enableSimulation false;
_previewObject lock 3;

private _objectPreviewSpheres = [];
for "_i" from 1 to 36 do {
	private _sphere = "Sign_Sphere100cm_F" createVehicleLocal [0,0,0];
	_sphere setObjectTexture [0,"#(rgb,8,8,3)color(0,1,0,1)"];
	_sphere setPosATL (_previewObject getPos [_collisionZone,10 * _i]);
	_objectPreviewSpheres pushBack _sphere;
};

private _actions = [];
_actions pushBack (player addAction ["<t color='#B0FF00'>Build</t>",{YMF_buildAction = 1},"",0,false,false,"","YMF_canBuild"]);
_actions pushBack (player addAction ["Rotate object",{YMF_buildRotation = YMF_buildRotation + YMF_buildRotationIncrement},"",0,false,false,"","true"]);
_actions pushBack (player addAction ["Raise object",{YMF_buildElevation = YMF_buildElevation + YMF_buildHeightIncrement},"",0,false,false,"","true"]);
_actions pushBack (player addAction ["Lower object",{YMF_buildElevation = YMF_buildElevation - YMF_buildHeightIncrement},"",0,false,false,"","true"]);
_actions pushBack (player addAction ["Surface Alignment",{
	YMF_alignToTerrain = !YMF_alignToTerrain;
	if (YMF_alignToTerrain) then {
		["Object will align to the terrain once you place it."] call YMF_fnc_notify;
	} else {
		["Object will place exactly where you choose."] call YMF_fnc_notify;
	};
},"",0,false,false,"","true"]);
if (_cancelAction) then {
	_actions pushBack (player addAction ["<t color='#FF0000'>Cancel</t>",{YMF_buildAction = 2},"",0,false,false,"","true"]);
};

[_previewObject,_objectPreviewSpheres,_collisionZone,_actions]