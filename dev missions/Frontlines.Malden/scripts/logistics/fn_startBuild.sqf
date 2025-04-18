/*
	File: fn_startBuild.sqf
	Author: Dom
	Description: Starts the building process
*/
params [
	["_data",[],[[]]]
];

if (_data isEqualTo []) then {
	private _display = findDisplay 9641;
	private _tree = _display displayCtrl 1500;
	private _selectionPath = tvCurSel _tree;

	if (count _selectionPath isEqualTo 1) exitWith {["You haven't selected an item to build."] call YMF_fnc_notify};
	_data = parseSimpleArray (_tree tvData _selectionPath);
};

_data params ["_class","_resources","_conditions"];
private _localResources = [player] call YMF_fnc_getCurrentResources;

if ([_localResources,_resources] call YMF_fnc_compareResources && {[_conditions] call YMF_fnc_conditionChecker}) then {
	([_class,true] call YMF_fnc_setupBuild) params ["_previewObject","_objectPreviewSpheres","_collisionZone","_actions"];
	closeDialog 0;
	[YMF_fnc_buildLoop,0,[_previewObject,_objectPreviewSpheres,_collisionZone,_actions,_class,_resources,_conditions,false]] call CBA_fnc_addPerFrameHandler;
} else {
	["Conditions/resource requirement not met."] call YMF_fnc_notify;
};