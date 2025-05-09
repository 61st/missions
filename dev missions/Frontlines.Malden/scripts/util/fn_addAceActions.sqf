/*
	File: fn_addAceActions.sqf
	Author: Dom
	Description: Sets up the ACE actions
*/
//YMF_bluforClassesToSave deleteAt 0;
private _fobClass = getText(missionConfigFile >> "Logi_Setup" >> "fobBuilding");

private _groupCategory = [
	"groupCategory",
	"Group Menu",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\meet_ca.paa",
	YMF_fnc_initGroupMenu,
	{[player] call YMF_fnc_isNearFOB}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions"],_groupCategory] call ace_interact_menu_fnc_addActionToObject;

private _baseCategory = [
	"baseCategory",
	"Frontlines",
	"",
	{},
	{true}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions"],_baseCategory] call ace_interact_menu_fnc_addActionToObject;

private _arsenalCategory = [
	"arsenalCategory",
	"Arsenal",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\armor_ca.paa",
	{[player,player,false] call ace_arsenal_fnc_openBox},
	{
		isNull objectParent player &&
		{player getVariable ["ace_arsenal_virtualItems",[]] isNotEqualTo [] &&
		{[player,50] call YMF_fnc_isNearFOB}}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory"],_arsenalCategory] call ace_interact_menu_fnc_addActionToObject;

private _saveRespawnLoadout = [
	"saveLoadout",
	"Save respawn loadout",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\download_ca.paa",
	{
		YMF_savedLoadout = [player] call CBA_fnc_getLoadout;
		["Loadout saved."] call YMF_fnc_notify;
	},
	{true}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory","arsenalCategory"],_saveRespawnLoadout] call ace_interact_menu_fnc_addActionToObject;

private _loadRespawnLoadout = [
	"loadLoadout",
	"Load respawn loadout",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\rearm_ca.paa",
	{
		[player,YMF_savedLoadout,true] call CBA_fnc_setLoadout;
	},
	{!isNil "YMF_savedLoadout"}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory","arsenalCategory"],_loadRespawnLoadout] call ace_interact_menu_fnc_addActionToObject;

private _copyLoadout = [
	"copyLoadout",
	"Copy loadout",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\download_ca.paa",
	{
		[player,[_target] call CBA_fnc_getLoadout,true] call CBA_fnc_setLoadout;
	},
	{
		isPlayer _target &&
		{[player,50] call YMF_fnc_isNearFOB}
	}
] call ace_interact_menu_fnc_createAction;
["CAManBase",0,["ACE_MainActions"],_copyLoadout,true] call ace_interact_menu_fnc_addActionToClass;

private _deploy = [
	"deploy",
	"Deploy",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\takeoff_ca.paa",
	YMF_fnc_initDeployMenu,
	{
		private _isNearMobileRespawn = (missionNamespace getVariable ["YMF_mobileRespawns",[]] findIf {(player distance _x) < 10}) isNotEqualTo -1;
		isNull objectParent player &&
		{[player,50] call YMF_fnc_isNearFOB || _isNearMobileRespawn || player distance (markerPos "respawn") < 50}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory"],_deploy] call ace_interact_menu_fnc_addActionToObject;

private _crateCategory = [
	"crateCategory",
	"Crates",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",
	YMF_fnc_initSupplyCrateMenu,
	{
		(rankId player > 3 || YMF_isZeus) &&
		{[player,50] call YMF_fnc_isNearFOB}
	}
	] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory"],_crateCategory] call ace_interact_menu_fnc_addActionToObject;

private _logisticsCategory = [
	"logisticsCategory",
	"Logistics",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\use_ca.paa",
	{},
	{
		rankId player > 1  || {YMF_isZeus}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory"],_logisticsCategory] call ace_interact_menu_fnc_addActionToObject;

private _buildMenu = [
	"buildMenu",
	"Build menu",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\defend_ca.paa",
	YMF_fnc_initBuildMenu,
	{
		isNull objectParent player &&
		{[player] call YMF_fnc_isNearFOB}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory","logisticsCategory"],_buildMenu] call ace_interact_menu_fnc_addActionToObject;

private _recycleObject = [
	"recycleObject",
	"Recycle",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\use_ca.paa",
	{[_target] spawn YMF_fnc_recycleObject},
	{
		(crew _target isEqualTo [] || {unitIsUAV _target}) &&
		{[player] call YMF_fnc_isNearFOB &&
		{(nearestObjects [player,[getText(missionConfigFile >> "Logi_Setup" >> "recycleBuilding")],150,true]) isNotEqualTo []}}
	},
	nil,nil,nil,8
] call ace_interact_menu_fnc_createAction;

private _moveObject = [
	"moveObject",
	"Move",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\use_ca.paa",
	{[_target] call YMF_fnc_moveObject},
	{
		isNull objectParent player &&
		{[player] call YMF_fnc_isNearFOB}
	}
] call ace_interact_menu_fnc_createAction;

["AllVehicles",0,["ACE_MainActions"],_recycleObject,true] call ace_interact_menu_fnc_addActionToClass;
{
	if !(_x isKindOf "LandVehicle" || {_x isKindOf "Ship" || {_x isKindOf "Air"}}) then {
		if (_x isEqualTo _fobClass) exitWith {};
		[_x,0,["ACE_MainActions"],_recycleObject] call ace_interact_menu_fnc_addActionToClass;
		[_x,0,["ACE_MainActions"],_moveObject] call ace_interact_menu_fnc_addActionToClass;
	};
} forEach YMF_bluforClassesToSave;

private _environmentMenu = [
	"environmentMenu",
	"Environment Control",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\use_ca.paa",
	YMF_fnc_initEnvironmentMenu,
	{
		(rankId player > 3 || YMF_isZeus) &&
		{[player] call YMF_fnc_isNearFOB}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory","logisticsCategory"],_environmentMenu] call ace_interact_menu_fnc_addActionToObject;

private _factoryMenu = [
	"factoryMenu",
	"Factory menu",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\box_ca.paa",
	YMF_fnc_initFactoryMenu,
	{
		([["factory"],true] call YMF_fnc_getSectorsByType isNotEqualTo []) &&
		{(rankId player > 2 || YMF_isZeus) &&
		{([player] call YMF_fnc_isNearFOB || [player,[["factory"],true] call YMF_fnc_getSectorsByType] call YMF_fnc_isNearSector)}}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory","logisticsCategory"],_factoryMenu] call ace_interact_menu_fnc_addActionToObject;

private _logisticsMenu = [
	"logisticsMenu",
	"Logistics menu",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\truck_ca.paa",
	YMF_fnc_initLogisticsMenu,
	{
		(rankId player > 2 || YMF_isZeus) &&
		{([player] call YMF_fnc_isNearFOB || [player,[["factory"],true] call YMF_fnc_getSectorsByType] call YMF_fnc_isNearSector)}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory","logisticsCategory"],_logisticsMenu] call ace_interact_menu_fnc_addActionToObject;

private _retrieveCrates = [
	"retrieveCrates",
	"Withdraw resources",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getout_ca.paa",
	YMF_fnc_initRetrieveMenu,
	{
		isNull objectParent player &&
		([player] call YMF_fnc_isNearFOB || [player,[["factory"],true] call YMF_fnc_getSectorsByType] call YMF_fnc_isNearSector)
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory","logisticsCategory"],_retrieveCrates] call ace_interact_menu_fnc_addActionToObject;

private _storeCrate = [
	"storeCrate",
	"Store crate",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\download_ca.paa",
	{
		[_target] call YMF_fnc_storeCrate;
	},
	{
		isNull (attachedTo _target) &&
		{[player] call YMF_fnc_isNearFOB ||
		{[player,[["factory"],true] call YMF_fnc_getSectorsByType] call YMF_fnc_isNearSector}}
	}
] call ace_interact_menu_fnc_createAction;

private _loadCrate = [
	"loadCrate",
	"Load crate",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getin_ca.paa",
	{[_target] call YMF_fnc_loadCrate},
	{
		private _transportClasses = getArray(missionConfigFile >> "Settings" >> "transportVehicles");
		_transportClasses = _transportClasses apply {_x select 0};
		isNull (attachedTo _target) && {nearestObjects [_target,_transportClasses,15] isNotEqualTo []}
	}
] call ace_interact_menu_fnc_createAction;

private _unloadCrate = [
	"unloadCrate",
	"Unload crate",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\getout_ca.paa",
	{[_target] call YMF_fnc_unloadCrate},
	{
		(_target getVariable ["YMF_loadedCrates",[]]) isNotEqualTo [] &&
		{speed _target isEqualTo 0}
	}
] call ace_interact_menu_fnc_createAction;

private _crateClasses = getArray(missionConfigFile >> "Logi_Setup" >> "bluforCrates");
{
	[_x,0,["ACE_MainActions"],_loadCrate] call ace_interact_menu_fnc_addActionToClass;
	[_x,0,["ACE_MainActions"],_storeCrate] call ace_interact_menu_fnc_addActionToClass;
} forEach _crateClasses;

private _vehicleClasses = getArray(missionConfigFile >> "Settings" >> "transportVehicles");
{
	_x params ["_class"];
	[_class,0,["ACE_MainActions"],_unloadCrate,true] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicleClasses;

private _createNewFOB = [
	"createNewFOB",
	"Establish new FOB",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\container_ca.paa",
	{[_target] spawn YMF_fnc_createNewFOB},
	{
		(rankId player > 2 || YMF_isZeus) &&
		{!([player,(getNumber(missionConfigFile >> "Settings" >> "fobBuildRadius")) * 2] call YMF_fnc_isNearFOB)}
	}
] call ace_interact_menu_fnc_createAction;
{
	[_x,0,["ACE_MainActions"],_createNewFOB] call ace_interact_menu_fnc_addActionToClass;
} forEach (getArray(missionConfigFile >> "Logi_Setup" >> "fobBoxes"));

private _drawDownFOB = [
	"drawDownFOB",
	"Draw down FOB",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\container_ca.paa",
	{[_target] spawn YMF_fnc_drawDownFOB},
	{
		(rankId player > 3 || YMF_isZeus) &&
		{([player] call YMF_fnc_isNearFOB)}
	}
] call ace_interact_menu_fnc_createAction;
[_fobClass,0,["ACE_MainActions"],_drawDownFOB] call ace_interact_menu_fnc_addActionToClass;

private _retrieveWheel = [
	"retrieveWheel",
	"Retrieve wheel",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\repair_ca.paa",
	{
		createVehicle ["ACE_Wheel",player,[],0,"CAN_COLLIDE"];
	},
	{true}
] call ace_interact_menu_fnc_createAction;

private _retrieveTrack = [
	"retrieveTrack",
	"Retrieve track",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\repair_ca.paa",
	{
		createVehicle ["ACE_Track",player,[],0,"CAN_COLLIDE"];
	},
	{true}
] call ace_interact_menu_fnc_createAction;

private _retrieveJerryCan = [
	"retrieveJerryCan",
	"Retrieve jerry can",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\refuel_ca.paa",
	{
		private _jerryCan = createVehicle ["Land_CanisterFuel_F",player,[],0,"CAN_COLLIDE"];
		[_jerryCan,50] call ace_refuel_fnc_makeJerryCan;
		[_jerryCan,true] remoteExecCall ["ace_dragging_fnc_setCarryable",0,_jerryCan];
	},
	{true}
] call ace_interact_menu_fnc_createAction;

private _destroyWheelTrack = [
	"destroyWheelTrack",
	"Destroy",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\destroy_ca.paa",
	{
		_target setDamage 1;
	},
	{true}
] call ace_interact_menu_fnc_createAction;

private _deleteCan = [
	"deleteCan",
	"Destroy",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\destroy_ca.paa",
	{
		deleteVehicle _target;
	},
	{true}
] call ace_interact_menu_fnc_createAction;

["B_Slingload_01_Repair_F",0,["ACE_MainActions"],_retrieveWheel] call ace_interact_menu_fnc_addActionToClass;
["B_Slingload_01_Repair_F",0,["ACE_MainActions"],_retrieveTrack] call ace_interact_menu_fnc_addActionToClass;
["B_Slingload_01_Fuel_F",0,["ACE_MainActions"],_retrieveJerryCan] call ace_interact_menu_fnc_addActionToClass;
["Land_CanisterFuel_F",0,["ACE_MainActions"],_deleteCan] call ace_interact_menu_fnc_addActionToClass;
{
	[_x,0,["ACE_MainActions"],_destroyWheelTrack] call ace_interact_menu_fnc_addActionToClass;
} forEach ["ACE_Wheel","ACE_Track"];

private _destroyObjectNearFOB = [
	"destroyObject",
	"Destroy",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\destroy_ca.paa",
	{
		_target setDamage 1;
	},
	{
		[player] call YMF_fnc_isNearFOB
	}
] call ace_interact_menu_fnc_createAction;
{
	_x params ["","_class"];
	[_class,0,["ACE_MainActions"],_destroyObjectNearFOB] call ace_interact_menu_fnc_addActionToClass;
} forEach (getArray(missionConfigFile >> "Logi_Setup" >> "supplyCrateTypes"));

private _fullHealAll = [
	"aceFullHealAll",
	"Full heal nearby players (including self)",
	"\a3\ui_f\data\IGUI\Cfg\Actions\heal_ca.paa",
	{
		{
			if (_x distance player < 25) then {
				[_x] remoteExecCall ["ace_medical_treatment_fnc_fullHealLocal",_x];
			};
		} forEach playableUnits;
	},
	{true}
] call ace_interact_menu_fnc_createAction;
private _medicalBuildingClasses = getArray(missionConfigFile >> "Logi_Setup" >> "medicalBuildings");
{
	[_x,0,["ACE_MainActions"],_fullHealAll] call ace_interact_menu_fnc_addActionToClass;
} forEach _medicalBuildingClasses;

private _cleanBase = [
	"cleanBase",
	"Clean base",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\use_ca.paa",
	{
		private _toClean = nearestObjects [player,["GroundWeaponHolder","WeaponHolderSimulated"],100];
		_toClean append (allDead select {(_x distance2D player) < 100});

		{
			deleteVehicle _x;
		} forEach _toClean;
	},
	{true}
] call ace_interact_menu_fnc_createAction;
[_fobClass,0,["ACE_MainActions"],_cleanBase] call ace_interact_menu_fnc_addActionToClass;

private _renameCategory = [
	"renameCategory",
	"Rename FOB",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\use_ca.paa",
	{[false] call YMF_fnc_initNamingMenu},
	{
		rankId player > 3 || YMF_isZeus
	}
] call ace_interact_menu_fnc_createAction;
[_fobClass,0,["ACE_MainActions"],_renameCategory] call ace_interact_menu_fnc_addActionToClass;

private _capture = [
	"capturePerson",
	"Capture",
	"\a3\ui_f\data\IGUI\Cfg\Actions\talk_ca.paa",
	{
		private _maxIntel = getNumber(missionConfigFile >> "Settings" >> "maxIntelFromPOW");
		private _intelGained = ceil (random _maxIntel);
		deleteVehicle _target;
		[_intelGained] remoteExecCall ["YMF_fnc_updateIntel",2];
		["Interrogation completed.","generalNotif","Intel Gained"] remoteExecCall ["YMF_fnc_notify",0];
	},
	{
		[player] call YMF_fnc_isNearFOB &&
		{captive _target &&
		{!isPlayer _target &&
		{[_target] call ace_medical_status_fnc_isInStableCondition}}}
	}
] call ace_interact_menu_fnc_createAction;
["CAManBase",0,["ACE_MainActions"],_capture,true] call ace_interact_menu_fnc_addActionToClass;

private _secureIntel = [
	"captureIntel",
	"Secure Intel",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\search_ca.paa",
	{
		private _maxIntel = getNumber(missionConfigFile >> "Settings" >> "maxIntelFromItem");
		private _intelGained = ceil (random _maxIntel);
		deleteVehicle _target;
		[_intelGained] remoteExecCall ["YMF_fnc_updateIntel",2];
		["Intelligence secured.","generalNotif","Intel Gained"] remoteExecCall ["YMF_fnc_notify",0];
	},
	{true}
] call ace_interact_menu_fnc_createAction;
private _intelClasses = getArray(missionConfigFile >> "Settings" >> "intelObjects");
{
	[_x,0,["ACE_MainActions"],_secureIntel] call ace_interact_menu_fnc_addActionToClass;
} forEach _intelClasses;

private _guerillaMenu = [
	"guerillaMenu",
	"Guerilla Support",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\help_ca.paa",
	YMF_fnc_initSupportMenu,
	{
		(rankId player > 2 || YMF_isZeus) &&
		{YMF_globalReputation > 0}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory"],_guerillaMenu] call ace_interact_menu_fnc_addActionToObject;

private _intelMenu = [
	"intelMenu",
	"Intel Menu",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\scout_ca.paa",
	YMF_fnc_initIntelMenu,
	{
		(rankId player > 1 || YMF_isZeus) &&
		{[player,50] call YMF_fnc_isNearFOB}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory"],_intelMenu] call ace_interact_menu_fnc_addActionToObject;

private _cancelMission = [
	"cancelMission",
	"Cancel Mission",
	"\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\danger_ca.paa",
	{
		if (YMF_secondaryActive isEqualTo "humanitarianRelief") then {
			["cancel"] remoteExecCall ["YMF_fnc_humanitarianRelief",2];
		} else {
			if (YMF_secondaryActive isEqualTo "listeningPost") then {
				["cancel"] remoteExecCall ["YMF_fnc_listeningPost",2];
			};
		};
		missionNamespace setVariable ["YMF_secondaryActive",nil,true];
	},
	{
		(rankId player > 1 || YMF_isZeus) &&
		{[player,50] call YMF_fnc_isNearFOB &&
		{missionNamespace getVariable ["YMF_secondaryActive",""] in ["captureUAV","clearUXOs","fobHunt","listeningPost","humanitarianRelief","medicalAid","supplyDepot"]}}
	}
] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions","baseCategory","intelMenu"],_cancelMission] call ace_interact_menu_fnc_addActionToObject;