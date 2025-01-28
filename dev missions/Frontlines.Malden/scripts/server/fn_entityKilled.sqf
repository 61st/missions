/*
	File: fn_entityKilled.sqf
	Author: Dom
	Description: Called when any entity is killed
*/
params ["_unit","_killer","_instigator"];
if (isNull _unit) exitWith {};

if (_unit isKindOf "CAManBase") then {
	private _side = side (group _unit);
	if (_side isEqualTo west) exitWith {
		YMF_bluforDeaths = YMF_bluforDeaths + 1
	};
	if (_side isEqualTo east) exitWith {
		YMF_opforDeaths = YMF_opforDeaths + 1;
		private _opforThreatCount = getNumber(missionConfigFile >> "Settings" >> "opforDeathsThreatIncreaseCount");
		if (YMF_opforDeaths % _opforThreatCount isEqualTo 0) then {
			[1] call YMF_fnc_updateThreat;
		};
	};
	if (_side isEqualTo resistance) exitWith {
		YMF_guerillaDeaths = YMF_guerillaDeaths + 1;
	};
	if (_side isEqualTo civilian) exitWith {
		YMF_civilianDeaths = YMF_civilianDeaths + 1;
	};
} else {
	if (_unit isKindOf "AllVehicles") then {
		private _mobileRespawnIndex = (missionNamespace getVariable ["YMF_mobileRespawns",[]]) find _unit;
		if (_mobileRespawnIndex isNotEqualTo -1) then {
			YMF_mobileRespawns deleteAt _mobileRespawnIndex;
			publicVariable "YMF_mobileRespawns";
		};

		if (_unit isKindOf "Air") then {
			private _heliIndex = (missionNamespace getVariable ["YMF_currentHelicopters",[]]) find _unit;
			if (_heliIndex isNotEqualTo -1) then {
				YMF_currentHelicopters deleteAt _heliIndex;
				publicVariable "YMF_currentHelicopters";
			} else {
				private _planeIndex = (missionNamespace getVariable ["YMF_currentPlanes",[]]) find _unit;
				if (_planeIndex isNotEqualTo -1) then {
					YMF_currentPlanes deleteAt _planeIndex;
					publicVariable "YMF_currentPlanes";
				};
			};
		};

		private _civVehicles = getArray(missionConfigFile >> "Civilian_Setup" >> "civilianVehicleTypes");
		_civVehicles append (getArray(missionConfigFile >> "Civilian_Setup" >> "civilianAircraftTypes"));
		if (_class in _civVehicles) exitWith {
			if (side _killer isEqualTo west) then {
				["A civilian vehicle has been destroyed."] remoteExecCall ["YMF_fnc_notify",0];

				private _nearestSector = [_unit,["town","city","factory"]] call YMF_fnc_getNearestSector;
				if !(isNull _nearestSector) then {
					[_nearestSector,getNumber (missionConfigFile >> "Settings" >> "seizedCivVehicleRepLoss")] call YMF_fnc_updateCivRep;

					private _civsKilled = _nearestSector getVariable ["YMF_sectorCivsKilled",0];
					_nearestSector setVariable ["YMF_sectorCivsKilled",_civsKilled + 1];
				};
			};
		};
	};
};