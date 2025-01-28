/*
	File: fn_updateLogistics.sqf
	Author: Dom
	Description: Updates the logistics variable and then the menu if its open
*/
params [
	["_logistics",[],[[]]],
	["_action","",[""]],
	["_data",[],[[],objNull]],
	["_selIndex",0,[0]]
];

YMF_logistics = _logistics;

private _display = findDisplay 9645;
if !(isNull _display) then {
	private _routeList = _display displayCtrl 1500;
	private _routeCurSel = lbCurSel _routeList;
	private _fromComboBox = _display displayCtrl 2100;

	if (_action isEqualTo "newTruck") then {
		if (_routeCurSel isEqualTo -1) then {
			[] call YMF_fnc_onLogisticsMenuLbChange;
		} else {
			_routeList lbSetCurSel _routeCurSel;
		};

		private _index = 0;
		for "_i" from 0 to (lbSize _fromComboBox)-1 do {
			if ((objectFromNetId(_fromComboBox lbData _i)) isEqualTo _data) exitWith {_index = _i};
		};
		private _resources = [_data] call YMF_fnc_getCurrentResources;
		_fromComboBox lbSetTextRight [_index,str _resources];
		(_display displayCtrl 2101) lbSetTextRight [_index,str _resources];
	} else {
		if (_action isEqualTo "startRoute") then {
			_data params ["_from","_to","","","","_carrying"];
			private _index = _routeList lbAdd format ["%1 to %2",[_from getVariable "YMF_sectorName",_from getVariable "YMF_fobName"] select (isNil {_from getVariable "YMF_sectorName"}),[_to getVariable "YMF_sectorName",_to getVariable "YMF_fobName"] select (isNil {_to getVariable "YMF_sectorName"})];
			_routeList lbSetData [_index,str(_data select [2,9])];
			_routeList lbSetTextRight [_index,str _carrying];
			_routeList lbSetCurSel _index;

			private _resources = [_from getVariable "YMF_factoryResources",[_from] call YMF_fnc_getCurrentResources] select (isNil {_from getVariable "YMF_factoryResources"});
			_fromComboBox lbSetTextRight [_selIndex,str _resources];
			[] call YMF_fnc_onLogisticsMenuComboChange;
		} else {
			if (_action isEqualTo "endRoute") then {
				lbClear _routeList;

				{
					_x params ["_from","_to","","","","_carrying"];
					private _index = _routeList lbAdd format ["%1 to %2",[_from getVariable "YMF_sectorName",_from getVariable "YMF_fobName"] select (isNil {_from getVariable "YMF_sectorName"}),[_to getVariable "YMF_sectorName",_to getVariable "YMF_fobName"] select (isNil {_to getVariable "YMF_sectorName"})];
					_routeList lbSetData [_index,str(_x select [2,9])];
					_routeList lbSetTextRight [_index,str _carrying];
				} forEach (YMF_logistics select 2);
				if (_routeCurSel >= (lbSize _routeList)) then {
					[] call YMF_fnc_onLogisticsMenuLbChange;
				} else {
					_routeList lbSetCurSel _routeCurSel;
				};
			};
		};
	};
};