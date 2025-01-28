/*
	File: fn_createOrLoadSave.sqf
	Author: Dom
	Requires: Creates or loads a save file
*/
private _save = profileNamespace getVariable ["YMF_serverSave",[]];

if (_save isEqualTo []) then {
	private _fobPosition = markerPos "manualFobMarker";
	if (_fobPosition isEqualTo [0,0,0]) then {
		private _radius = (getNumber(missionConfigFile >> "Settings" >> "sectorActivationRange") * 1.25);
		private _startPos = [worldSize / 2,worldSize / 2];

		while {_fobPosition isEqualTo [0,0,0]} do {
			private _testPos = _startPos getPos [random (worldSize / 2),random 360];
			if (
				_testPos isFlatEmpty [-1,-1,0.1,5,0,false,objNull] isNotEqualTo [] &&
				{lineIntersectsSurfaces [AGLtoASL _testPos,AGLToASL _testPos vectorAdd [0,0,15],objNull,objNull,false,1,"GEOM","NONE"] isNotEqualTo [] &&
				{nearestTerrainObjects [_testPos,[],25,false] isEqualTo [] &&
				{YMF_allSectors findIf {_x distance _testPos < _radius} isEqualTo -1}}}
			) then {
				_fobPosition = _testPos;
			};
		};
	};

	private _fobBuildingClass = getText(missionConfigFile >> "Logi_Setup" >> "fobBuilding");
	private _startRes = getArray(missionConfigFile >> "Settings" >> "startingResources");
	(getArray(missionConfigFile >> "Settings" >> "defaultFOBNames")) params ["_name"];

	private _fobBuilding = createVehicle [_fobBuildingClass,_fobPosition];
	_fobBuilding setPosATL _fobPosition;
	private _fobNamespace = createSimpleObject ["CBA_NamespaceDummy",_fobPosition];
	_fobNamespace setPosATL _fobPosition;
	private _fobVariable = "FOB_0";
	_fobNamespace setVariable ["YMF_fobVariable",_fobVariable,true];
	_fobNamespace setVariable ["YMF_fobName",_name,true];
	if (getNumber(missionConfigFile >> "Settings" >> "fobGlobalResourcePool") isEqualTo 0) then {
		_fobNamespace setVariable ["YMF_fobResources",_startRes,true];
	} else {
		missionNamespace setVariable ["YMF_globalResources",_startRes,true];
	};
	missionNamespace setVariable ["YMF_allFOBs",[_fobNamespace],true];

	private _marker = createMarker [_fobVariable,_fobPosition];
	_marker setMarkerType "b_hq";
	_marker setMarkerSize [1.5,1.5];
	_marker setMarkerText _name;

	YMF_logistics = [0,0,[]];
	[YMF_logistics] remoteExecCall ["YMF_fnc_updateLogistics",-2,"YMF_Logi_JIP"];
	missionNamespace setVariable ["YMF_threatLevel",0,true];
	missionNamespace setVariable ["YMF_intelCount",0,true];
	[] call YMF_fnc_updateCivRep;

	YMF_playtime = 0;
	YMF_bluforDeaths = 0;
	YMF_opforDeaths = 0;
	YMF_guerillaDeaths = 0;
	YMF_civilianDeaths = 0;
} else {
	_save params ["_date","_sectors","_fobs","_logistics","_threat","_intel","_stats"];

	/*
	[
		[
			["YMF_sectorStrength",1],
			["YMF_sectorReputation",0],
			["YMF_sectorOwned",true],
			["YMF_sectorCivsKilled",2],
			["YMF_destroyedBuildingCount",0],
			["YMF_towerDestroyed",false],
			["YMF_factoryType",0],
			["YMF_factoryResources",[0,0,0]]
		],
	]

	[
		[
			"FOB Alpha",
			[0,0,0],
			[0,0,0]
			[
				objects
			]
		]
	]
	*/

	setDate _date;

	{
		private _sectorNamespace = _x;
		private _sectorInfo = _sectors select _forEachIndex;

		{
			_x params ["_var","_value"];
			_sectorNamespace setVariable [_var,_value,true];

			if (_var isEqualTo "ymf_sectorowned" && {_value}) then {
				(_sectorNamespace getVariable "YMF_sectorVariable") setMarkerColor "ColorBLUFOR";
			};
		} forEach _sectorInfo;
	} forEach YMF_allSectors;

	private _fobNamespaces = [];
	{
		_x params ["_name","_position","_resources","_objects"];
		private _fobNamespace = createSimpleObject ["CBA_NamespaceDummy",_position];
		_fobNamespace setPosATL _position;
		_fobNamespaces pushBack _fobNamespace;
		private _fobVariable = format ["FOB_%1",_forEachIndex];
		_fobNamespace setVariable ["YMF_fobVariable",_fobVariable,true];
		_fobNamespace setVariable ["YMF_fobName",_name,true];
		if (getNumber(missionConfigFile >> "Settings" >> "fobGlobalResourcePool") isEqualTo 0) then {
			_fobNamespace setVariable ["YMF_fobResources",_resources,true];
		} else {
			if (_forEachIndex isEqualTo 0) then {
				missionNamespace setVariable ["YMF_globalResources",_resources,true];
			};
		};

		private _marker = createMarker [_fobVariable,_position];
		_marker setMarkerType "b_hq";
		_marker setMarkerSize [1.5,1.5];
		_marker setMarkerText _name;

		{
			_x params ["_class","_pos","_dir","_up",["_damageArray",[]],["_itemArray",[]]];

			private _object = createVehicle [_class,_pos,[],0,"CAN_COLLIDE"];
			_object setPosWorld _pos;
			_object setVectorDirAndUp [_dir,_up];
			{
				_object setHitIndex [_forEachIndex,_x,false];
			} forEach _damageArray;

			[_object] call YMF_fnc_initialiseObject;

			if (unitIsUAV _object) then {
				[_object] call YMF_fnc_setupUAV;
			};

			[_object] call YMF_fnc_clearCargo;
			{
				_x params ["_items","_counts"];
				private _backpacks = _forEachIndex isEqualTo 3;
				{
					if (_backpacks) then {
						_object addBackpackCargoGlobal [_x,_counts select _forEachIndex];
					} else {
						_object addItemCargoGlobal [_x,_counts select _forEachIndex];
					};
				} forEach _items;
			} forEach _itemArray;
		} forEach _objects;
	} forEach _fobs;
	missionNamespace setVariable ["YMF_allFOBs",_fobNamespaces,true];

	private _curRoutes = _logistics select 2;
	if (_curRoutes isNotEqualTo []) then {
		{
			_x params ["_from","_to","","_startTransitTime","_endTransitTime"];

			if ("FOB_" in _from) then {
				private _fromIndex  = YMF_allFOBs findIf {_x getVariable "YMF_fobVariable" == _from};
				_x set [0,YMF_allFOBs select _fromIndex];
			} else {
				private _fromIndex  = YMF_allSectors findIf {_x getVariable "YMF_sectorVariable" == _from};
				_x set [0,YMF_allSectors select _fromIndex];
			};

			if ("FOB_" in _to) then {
				private _toIndex  = YMF_allFOBs findIf {_x getVariable "YMF_fobVariable" == _to};
				_x set [1,YMF_allFOBs select _toIndex];
			} else {
				private _toIndex  = YMF_allSectors findIf {_x getVariable "YMF_sectorVariable" == _to};
				_x set [1,YMF_allSectors select _toIndex];
			};

			private _fullTransitTime = _endTransitTime - _startTransitTime;
			_x set [3,CBA_missionTime];
			_x set [4,(CBA_missionTime + _fullTransitTime)];
		} forEach _curRoutes;

		_logistics set [2,_curRoutes];
		YMF_logisticsHandle = [YMF_fnc_logisticsLoop,10] call CBA_fnc_addPerFrameHandler;
	};

	YMF_logistics = _logistics;
	[YMF_logistics] remoteExecCall ["YMF_fnc_updateLogistics",-2,"YMF_Logi_JIP"];

	missionNamespace setVariable ["YMF_threatLevel",_threat,true];
	missionNamespace setVariable ["YMF_intelCount",_intel,true];
	[] call YMF_fnc_updateCivRep;

	YMF_playtime = _stats select 0;
	YMF_bluforDeaths = _stats select 1;
	YMF_opforDeaths = _stats select 2;
	YMF_guerillaDeaths = _stats select 3;
	YMF_civilianDeaths = _stats select 4;
};

[] call YMF_fnc_saveGame;

[
	{
		{
			[_x] call YMF_fnc_createTower;
		} forEach ([["tower"]] call YMF_fnc_getSectorsByType);
	},
	[],
	5
] call CBA_fnc_waitAndExecute;