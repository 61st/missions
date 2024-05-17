#include "..\script_component.hpp";
params ["_unit"];

private _oldSelectionPath = [_unit] call SIXONE_fnc_removeFromGroup;

[SIXONE_dynamicGroups,_oldSelectionPath] remoteExecCall ["SIXONE_fnc_updateGroups",-2,"SIXONE_DG_JIP"];