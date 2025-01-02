#include "..\script_component.hpp";
/*
	File: fn_initZeusMenu.sqf
	Author: Dom
	Description: Opens and populates the zeus menu
*/

private _display = createDialog ["YMF_zeusMenu",true];
private _sectorListbox = _display displayCtrl 1500;
{
	private _index = _sectorListbox lbAdd (_x getVariable "YMF_sectorName");
	_sectorListbox lbSetData [_index,netId _x];

	private _colour = [0.5,0,0,1];
	if (_x getVariable ["YMF_sectorOwned",false]) then {
		_colour = [0,0.3,0.6,1];
	} else {
		if (_x in YMF_activeSectors) then {
			_colour = [0.85,0.4,0,1];
		};
	};
	_sectorListbox lbSetColor [_index,_colour];
} forEach YMF_allSectors;
lbSort _sectorListbox;

private _fobListbox = _display displayCtrl 1501;
{
	private _index = _fobListbox lbAdd (_x getVariable "YMF_fobName");
	_fobListbox lbSetData [_index,netId _x];
} forEach YMF_allFOBs;
lbSort _fobListbox;

_sectorListbox lbSetCurSel 0;
_fobListbox lbSetCurSel 0;