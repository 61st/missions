#include "..\script_component.hpp";
params ["_unit"];

private _oldSelectionPath = [_unit] call YMF_fnc_removeFromGroup;

[YMF_dynamicGroups,_oldSelectionPath] remoteExecCall ["YMF_fnc_updateGroups",-2,"YMF_DG_JIP"];