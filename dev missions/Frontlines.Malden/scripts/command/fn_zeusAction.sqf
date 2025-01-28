/*
	File: fn_zeusAction.sqf
	Author: Dom
	Description: Applys action from zeus menu
*/
params [
	["_action","",[""]]
];

private _display = findDisplay 9649;
private _editBox = _display displayCtrl 1400;
private _sectorListbox = _display displayCtrl 1500;
private _fobListbox = _display displayCtrl 1501;
private _index = lbCurSel _sectorListbox;
private _text = ctrlText _editBox;
private _sector = objectFromNetId (_sectorListbox lbData _index);
private _fob = objectFromNetId (_fobListbox lbData (lbCurSel _fobListbox));

switch _action do {
	case "adjustIntel": {
		if !([_text] call YMF_fnc_checkNumber) exitWith {};
		private _number = floor (parseNumber _text);

		[_number] remoteExecCall ["YMF_fnc_updateIntel",2];
		["Intel updated."] call YMF_fnc_notify;
	};

	case "adjustCivRep": {
		if !([_text] call YMF_fnc_checkNumber) exitWith {};
		if (_sector getVariable "YMF_sectorType" in ["military","tower"]) exitWith {["You need to select a civilian sector."] call YMF_fnc_notify};
		private _number = floor (parseNumber _text);

		[_sector,_number] remoteExecCall ["YMF_fnc_updateCivRep",2];
		[format["Civilian reputation in %1 updated.",_sector getVariable "YMF_sectorName"]] call YMF_fnc_notify;
	};

	case "adjustThreat": {
		if !([_text] call YMF_fnc_checkNumber) exitWith {};
		private _number = floor (parseNumber _text);

		[_number] remoteExecCall ["YMF_fnc_updateThreat",2];
		["Threat level updated."] call YMF_fnc_notify;
	};

	case "adjustResources": {
		if !([_text] call YMF_fnc_checkNumber) exitWith {};
		private _number = floor (parseNumber _text);

		private _resources = [0,0,0];
		_resources set [(_this select 1),_number];
		[_fob,_resources,true] call YMF_fnc_adjustResources;
		["Resources updated."] call YMF_fnc_notify;
	};

	case "forceSave": {
		[] remoteExecCall ["YMF_fnc_saveGame",2];
		["Save request sent to server."] call YMF_fnc_notify;
	};

	case "wipeSave": {
		closeDialog 0;
		private _action = [
			"Are you sure you want to wipe the server progress (this should only need to be done before switching maps)",
			"Wiping Save",
			"Confirm",
			"Cancel"
		] call BIS_fnc_guiMessage;

		if (_action) then {
			[] remoteExecCall ["YMF_fnc_wipeSave",2];
			["Wipe request sent to server."] call YMF_fnc_notify;
		};
	};

	case "callReinforcements": {
		if !(_sector in YMF_activeSectors) exitWith {["Sector is not active."] call YMF_fnc_notify};
		[_sector] remoteExecCall ["YMF_fnc_callReinforcements",2];
	};

	case "activateSector": {
		if (_sector getVariable ["YMF_sectorOwned",false]) exitWith {["Sector is already captured."] call YMF_fnc_notify};
		if (_sector in YMF_activeSectors) exitWith {["Sector must be inactive."] call YMF_fnc_notify};

		_sectorListbox lbSetColor [_index,[0.85,0.4,0,1]];
		[_sector] remoteExecCall ["YMF_fnc_activateSector",2];
	};

	case "captureSector": {
		if (_sector getVariable ["YMF_sectorOwned",false]) exitWith {["Sector is already captured."] call YMF_fnc_notify};
		if (_sector in YMF_activeSectors) exitWith {["Sector must be inactive."] call YMF_fnc_notify};

		private _sectorVar = _sector getVariable "YMF_sectorVariable";
		_sector setVariable ["YMF_sectorOwned",true,true];
		_sectorVar setMarkerColor "colorBLUFOR";
		_sector setVariable ["YMF_sectorStrength",0,true];
		_sectorListbox lbSetColor [_index,[0,0.3,0.6,1]];

		private _sectorType = _sector getVariable "YMF_sectorType";
		if (_sectorType isEqualTo "tower") then {
			missionNamespace setVariable [format["YMF_%1CapTime",_sectorVar],CBA_missionTime,2];
		} else {
			if (_sectorType in ["town","city","factory"]) then {
				[] remoteExecCall ["YMF_fnc_updateCivRep",2];
				if (_sectorType isEqualTo "factory") then {
					_sector setVariable ["YMF_factoryType",-1,true];
					_sector setVariable ["YMF_factoryResources",[0,0,0],true];
				};
			};
		};
	};

	case "loseSector": {
		if !(_sector getVariable ["YMF_sectorOwned",false]) exitWith {["Sector is not captured."] call YMF_fnc_notify};
		if (_sector in YMF_activeSectors) exitWith {["Sector must be inactive."] call YMF_fnc_notify};

		_sector setVariable ["YMF_sectorOwned",true,true];
		(_sector getVariable "YMF_sectorVariable") setMarkerColor "colorOPFOR";
		_sector setVariable ["YMF_sectorStrength",([] call YMF_fnc_getAverageStrength),true];
		_sectorListbox lbSetColor [_index,[0.5,0,0,1]];

		private _sectorType = _sector getVariable "YMF_sectorType";
		if (_sectorType isEqualTo "factory") then {
			_sector setVariable ["YMF_factoryType",nil,true];
			_sector setVariable ["YMF_factoryResources",nil,true];
		};
	};

	case "destroyAA": {
		[] remoteExecCall ["YMF_fnc_destroyAA",2];
	};

	case "destroyArtillery": {
		[] remoteExecCall ["YMF_fnc_destroyArtillery",2];
	};

	case "destroyJammer": {
		[] remoteExecCall ["YMF_fnc_destroyJammer",2];
	};

	case "repairRequest": {
		[] remoteExecCall ["YMF_fnc_repairRequest",2];
	};

	case "fobAssault": {
		if (count playableUnits < 4) exitWith {["Too few players on."] call YMF_fnc_notify};
		[] remoteExecCall ["YMF_fnc_fobAssault",2];
	};

	case "convoyAmbush": {
		if ((YMF_logistics select 2) isEqualTo []) exitWith {["No convoys moving."] call YMF_fnc_notify};
		[] remoteExecCall ["YMF_fnc_ambushLogisticsConvoy",2];
	};

	case "sectorCounterAttack": {
		if (([true,1] call YMF_fnc_getFrontlineSectors) isEqualTo []) exitWith {["No sectors to attack."] call YMF_fnc_notify};
		[] remoteExecCall ["YMF_fnc_sectorCounterAttack",2];
	};

	case "destroyOpforConvoy": {
		private _opforFactories = [['factory']] call YMF_fnc_getSectorsByType;
		if !((_opforFactories findIf {!(_x getVariable ['YMF_sectorOwned',false])}) isNotEqualTo -1) exitWith {["No opfor factories available."] call YMF_fnc_notify};
		[] remoteExecCall ["YMF_fnc_destroyConvoy",2];
	};

	case "allowDamage": {
		if (isDamageAllowed player) then {
			player allowDamage false;
			["Damage disabled."] call YMF_fnc_notify;
		} else {
			player allowDamage true;
			["Damage enabled."] call YMF_fnc_notify;
		};
	};

	case "openArsenal": {
		[player,player,true] call ace_arsenal_fnc_openBox;
	};

	case "heal": {
		private _vehicle = objectParent player;
		if !(isNull _vehicle) then {
			_vehicle setDamage 0;
		};
		[player] call ace_medical_treatment_fnc_fullHealLocal;
	};

	case "hideObject": {
		if (isObjectHidden player) then {
			[player,false] remoteExecCall ["hideObjectGlobal",2];
			["Player object now shown."] call YMF_fnc_notify;
		} else {
			[player,true] remoteExecCall ["hideObjectGlobal",2];
			["Player object now invisible."] call YMF_fnc_notify;
		};
	};

	case "clearSmoke": {
		if !([_text] call YMF_fnc_checkNumber) exitWith {};
		private _number = parseNumber _text;

		{
			deleteVehicle _x;
		} forEach (player nearObjects ["SmokeShell",_number]);
	};

	case "clearMines": {
		if !([_text] call YMF_fnc_checkNumber) exitWith {};
		private _number = parseNumber _text;

		{
			deleteVehicle _x;
		} forEach (nearestMines [player,[],_number,false,true]);
	};
};