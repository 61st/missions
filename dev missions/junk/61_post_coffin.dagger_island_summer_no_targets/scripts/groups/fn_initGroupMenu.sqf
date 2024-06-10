#include "..\script_component.hpp";
private _display = createDialog ["LXIF_groupMenu",true];
private _tree = _display displayCtrl 1500;

private _factionName = getText(missionConfigFile >> "Dynamic_Groups" >> "faction_name");
(_display displayCtrl 1000) ctrlSetText format ["%1 %2",_factionName,localize "STR_LXIF_Role_Menu_Title"];

private _rolesArray = missionConfigFile >> "Dynamic_Roles";
private _myPath = [0,0];

{
	_x params ["_groupName","_roles","_conditions","","_units"];

	private _treeIndex = _tree tvAdd [[],_groupName];

	if (call compile _conditions) then {
		{
			private _roleInfo = _rolesArray >> _x;
			private _roleName = getText(_roleInfo >> "name");
			private _roleIcon = getText(_roleInfo >> "icon");

			private _playerInRole = _units select _forEachIndex;
			private _alpha = 1;
			private _name = format["%1: ",_roleName];

			if !(isNull _playerInRole) then {
				_alpha = 0.4;
				_name = format ["%1%2",_name,name _playerInRole];
			};

			private _unitIndex = _tree tvAdd [[_treeIndex],_name];
			_tree tvSetColor [[_treeIndex,_unitIndex],[1,1,1,_alpha]];

			private _data = [netID _playerInRole,_x];
			_tree tvSetData [[_treeIndex,_unitIndex],str(_data)];

			_tree tvSetPicture [[_treeIndex,_unitIndex],_roleIcon];
			_tree tvSetPictureColor [[_treeIndex,_unitIndex],[1,1,1,_alpha]];

			if (player isEqualTo _playerInRole) then {
				_myPath = [_treeIndex,_unitIndex];
			};
		} forEach _roles;
	};
} forEach LXIF_dynamicGroups;

_tree tvSetCurSel _myPath;