/*
	File: fn_initLogisticsMenu.sqf
	Author: Dom
	Description: Opens and populates the logistics menu
*/
private _display = createDialog ["YMF_logisticsMenu",true];

YMF_logistics params ["_availableTrucks","_trucksInUse","_currentRoutes"];

private _listbox = _display displayCtrl 1500;

{
	_x params ["_from","_to","","","","_carrying"];
	private _index = _listbox lbAdd format ["%1 to %2",[_from getVariable "YMF_sectorName",_from getVariable "YMF_fobName"] select (isNil {_from getVariable "YMF_sectorName"}),[_to getVariable "YMF_sectorName",_to getVariable "YMF_fobName"] select (isNil {_to getVariable "YMF_sectorName"})];
	_listbox lbSetData [_index,str(_x select [2,9])];
	_listbox lbSetTextRight [_index,str _carrying];
} forEach _currentRoutes;

private _fromComboBox = _display displayCtrl 2100;
private _toComboBox = _display displayCtrl 2101;

{
	private _name = _x getVariable "YMF_fobName";
	private _id = netId _x;
	private _resources = [_x] call YMF_fnc_getCurrentResources;

	private _index = _fromComboBox lbAdd _name;
	_fromComboBox lbSetData [_index,_id];
	_fromComboBox lbSetTextRight [_index,str _resources];
	_toComboBox lbAdd _name;
	_toComboBox lbSetData [_index,_id];
	_toComboBox lbSetTextRight [_index,str _resources];
} forEach YMF_allFOBs;

private _factories = [["factory"],true] call YMF_fnc_getSectorsByType;
{
	private _name = _x getVariable "YMF_sectorName";
	private _resources = _x getVariable "YMF_factoryResources";
	private _id = netId _x;

	private _index = _fromComboBox lbAdd _name;
	_fromComboBox lbSetData [_index,_id];
	_fromComboBox lbSetTextRight [_index,str _resources];
	_toComboBox lbAdd _name;
	_toComboBox lbSetData [_index,_id];
	_toComboBox lbSetTextRight [_index,str _resources];
} forEach _factories;

_fromComboBox lbSetCurSel 0;
_toComboBox lbSetCurSel 0;

[] call YMF_fnc_onLogisticsMenuLbChange;