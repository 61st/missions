#include "..\script_component.hpp";
params [
	["_unit",objNull,[objNull]],
	["_selectionPath",[],[[]]],
	["_desiredRole","",[""]],
	["_isRespawn",false,[true]]
];

_selectionPath params ["_groupIndex","_unitIndex"];
private _groupToUpdate = YMF_dynamicGroups select _groupIndex;
private _unitsInGroup = _groupToUpdate select 4;
private _desiredUnit = _unitsInGroup select _unitIndex;

if (!isNull _desiredUnit && {!_isRespawn}) exitWith {
	["Role already taken."] remoteExecCall ["hint",_unit];
};

private _oldSelectionPath = if (_isRespawn) then {[]} else {[_unit] call YMF_fnc_removeFromGroup};

private _selectedGroup = _groupToUpdate select 3;
if (isNull _selectedGroup) then {
	_selectedGroup = createGroup [side _unit,true];
	_selectedGroup setGroupIdGlobal [_groupToUpdate select 0];
	_groupToUpdate set [3,_selectedGroup];
};

if !(_unit in (units _selectedGroup)) then {
	[_unit] joinSilent _selectedGroup;
};

_unitsInGroup set [_unitIndex,_unit];
[_desiredRole,_isRespawn] remoteExecCall ["YMF_fnc_setupPlayer",_unit];

[_selectedGroup,_unit] remoteExecCall ["selectLeader",groupOwner _selectedGroup];

[YMF_dynamicGroups,_oldSelectionPath,_selectionPath,_unit] remoteExecCall ["YMF_fnc_updateGroups",-2,"YMF_DG_JIP"];