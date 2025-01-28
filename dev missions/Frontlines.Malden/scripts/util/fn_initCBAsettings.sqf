/*
	File: fn_initCBAsettings.sqf
	Author: Dom
	Description: Sets up the CBA settings
*/
[
	"YMF_preserveBuildData",
	"CHECKBOX",
	["Preserve build data","Saves height, direction and terrain alignment when building."],
	["Frontlines","Building"]
] call CBA_fnc_addSetting;
YMF_buildElevation = 0;
YMF_buildRotation = 0;
YMF_alignToTerrain = true;

[
	"YMF_buildRotationIncrement",
	"SLIDER",
	["Build rotation increment","Select your desired rotation increment."],
	["Frontlines","Building"],
	[1,90,45,0]
] call CBA_fnc_addSetting;

[
	"YMF_buildHeightIncrement",
	"SLIDER",
	["Build height increment","Select your desired height increment when moving an object up or down."],
	["Frontlines","Building"],
	[0.01,1,0.2,2]
] call CBA_fnc_addSetting;

[
	"YMF_postBuildAction",
	"LIST",
	["Post build action","Choose what action should happen after a build occurs, repeat will not work with any vehicles."],
	["Frontlines","Building"],
	[[0,1,2],["None","Repeat Build","Re-open Menu"]]
] call CBA_fnc_addSetting;

[
	"YMF_uiUpdateInterval",
	"SLIDER",
	["UI Update Interval","Choose the time interval between UI updates, the longer the interval the slower the update which may help performance for lower end systems."],
	["Frontlines","User Interface"],
	[0,10,0.5,2],
	nil,
	{
		if !(isNil "YMF_uiHandle") then {
			[YMF_uiHandle] call CBA_fnc_removePerFrameHandler;

			private _markerVar = "";
			private _sector = [player,["town","city","factory","military","tower"]] call YMF_fnc_getNearestSector;
			private _radius = (getArray(missionConfigFile >> "Settings" >> "sectorRadius")) select ([_sector getVariable "YMF_sectorType"] call YMF_fnc_getSectorTypeIndex);
			if (player distance2D _sector < _radius) then {
				_markerVar = format ["%1Marker",_sector getVariable "YMF_sectorVariable"];
			};
			YMF_uiHandle = [YMF_fnc_updateUI,YMF_uiUpdateInterval,[true,_markerVar]] call CBA_fnc_addPerFrameHandler;
		};
	}
] call CBA_fnc_addSetting;

[
	"YMF_mapUpdateInterval",
	"SLIDER",
	["Map Update Interval","Choose the time interval between blufor map marker updates."],
	["Frontlines","Map"],
	[0,5,0,2]
] call CBA_fnc_addSetting;

[
	"YMF_showIntro",
	"CHECKBOX",
	["Show intro screen","Shows the welcome screen, deselect to load straight in."],
	["Frontlines","User Interface"],
	true
] call CBA_fnc_addSetting;

[
	"YMF_showCaptureBar",
	"CHECKBOX",
	["Show capture bar","Shows the capture bar when inside an objectives radius."],
	["Frontlines","User Interface"],
	true,
	nil,
	{
		if !(YMF_showCaptureBar) then {
			private _hud = uiNamespace getVariable ["YMF_HUD",displayNull];
			private _control = _hud displayCtrl 1000;
			if (ctrlShown _control) then {
				_control ctrlShow false;
				(_hud displayCtrl 1900) ctrlShow false;
				(_hud displayCtrl 1901) ctrlShow false;
			};
		};
	}
] call CBA_fnc_addSetting;

[
	"YMF_autoSaveLoadout",
	"CHECKBOX",
	["Automatically save loadout","Automatically saves your loadout when the arsenal is closed."],
	["Frontlines","Arsenal"],
	true
] call CBA_fnc_addSetting;

[
	"YMF_weightWarningThreshold",
	"SLIDER",
	["Weight Warning Threshold","Select the weight threshold which triggers the heavy weight warning message when leaving the arsenal."],
	["Frontlines","Arsenal"],
	[30,50,40,1]
] call CBA_fnc_addSetting;

if (YMF_isTFAREnabled) then {
	[
		"YMF_autoRadioOption",
		"LIST",
		["Automatic Radio Channel Selection","Choose what radio channel selection should happen once you recieve your radio."],
		["Frontlines","Radio"],
		[[0,1,2],["Disabled","Group default","Last selected channel"],1]
	] call CBA_fnc_addSetting;
};