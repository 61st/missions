#include "..\script_component.hpp";
params ["_unit"];

private _oldSelectionPath = [_unit] call LXIF_fnc_removeFromGroup;

[LXIF_dynamicGroups,_oldSelectionPath] remoteExecCall ["LXIF_fnc_updateGroups",-2,"LXIF_DG_JIP"];