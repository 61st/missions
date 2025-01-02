#include "..\script_component.hpp";
/*
	File: fn_initBuildMenu.sqf
	Author: Dom
	Description: Opens and populates the build menu
*/

private _display = createDialog ["YMF_buildMenu",true];
private _tree = _display displayCtrl 1500;

private _buyables = getArray(missionConfigFile >> "Logi_Setup" >> "bluforBuyables");

{
	_x params ["_category","_options"];
	private _categoryIndex = _tree tvAdd [[],_category];

	{
		_x params ["_class","_resources","_conditions"];
		_resources params ["_supplies","_fuel","_ammo"];

		([_class] call YMF_fnc_fetchDetails) params ["_name","_icon"];

		if (_class isEqualType []) then {
			_name = _class select 1;
			_x set [0,_class select 0];
		};

		private _index = _tree tvAdd [[_categoryIndex],_name];

		if !(_icon in ["","pictureStaticObject","pictureThing"]) then {
			_tree tvSetPicture [[_categoryIndex,_index],_icon];
		};

		_tree tvSetData [[_categoryIndex,_index],str(_x)];
	} forEach _options;
} forEach _buyables;

_tree tvSetCurSel [0];

YMF_canBuild = false;
YMF_buildAction = 0;
if !(YMF_preserveBuildData) then {
	YMF_alignToTerrain = true;
	YMF_buildElevation = 0;
	YMF_buildRotation = 0;
};