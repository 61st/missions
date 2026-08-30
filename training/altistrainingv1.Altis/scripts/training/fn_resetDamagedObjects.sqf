#include "..\script_component.hpp"
/*
 * Author: Rory, Mike, JoramD
 * Spawns objects in predefined positions and allows resetting of those objects.
 *
 * Arguments:
 * 0: Controller <OBJECT>
 * 1: Object spawn positions <ARRAY>
 * 2: Object classnames <ARRAY>
 *
 *
 * Return Value:
 * None
 *
 * Example:
 * [controller, [targetPos1, targetPos2, targetPos3], ["vehicleClass1", "vehicleClass2", "vehicleClass3"]] call YMF_fnc_resetDamagedObjects
 */

params ["_controller", "_targetPads", "_targetClasses"];

if (isServer) then {
    {
        private _index = _forEachIndex;
        private _spawnPos = [];

        if (_x isEqualType objNull) then {
            if (!isNull _x) then {
                _spawnPos = getPosATL _x;
            };
        };

        if (_x isEqualType []) then {
            if ((count _x) >= 3) then {
                _spawnPos = _x;
            };
        };

        if (
            (count _spawnPos) >= 3 &&
            {_index < count _targetClasses}
        ) then {
            private _vehicle = createVehicle [
                _targetClasses select _index,
                _spawnPos,
                [],
                0,
                "CAN_COLLIDE"
            ];

            if (_x isEqualType objNull) then {
                _vehicle setDir (getDir _x);
            };

            _vehicle setVehicleLock "LOCKED";
            _vehicle setVehicleAmmo 0;
            _vehicle setVehicleTIPars [1, 1, 1];

            clearMagazineCargoGlobal _vehicle;
            clearWeaponCargoGlobal _vehicle;
            clearItemCargoGlobal _vehicle;
        } else {
            diag_log format [
                "[Training] Skipped invalid target pad at index %1: %2",
                _index,
                _x
            ];
        };
    } forEach _targetPads;
};

if (hasInterface) then {
    private _action = [
        QGVAR(resetDamageAction),
        "Reset targets",
        "a3\missions_f_exp\data\img\lobby\ui_campaign_lobby_background_tablet_button_respawn02_ca.paa",
        {
            (_this select 2) params ["_targetPads", "_targetClasses"];
            {
                private _type = _targetClasses select _forEachIndex;
                private _nearestObjects = nearestObjects [_x, [_type], 5];
                private _target = _nearestObjects select 0;
                if (_nearestObjects isEqualTo [] || {damage _target != 0}) then {
                    deleteVehicle _target;

                    [
                        {
                            params ["_type", "_position"];
                            private _newTarget = createVehicle [_type, _position, [], 0, "CAN_COLLIDE"];
                            _newTarget setDir (getDir _position);
                            _newTarget setVehicleLock "LOCKED";
                            _newTarget setVehicleAmmo 0;
                            _newTarget setVehicleTIPars [1, 1, 1];
                            clearMagazineCargoGlobal _newTarget;
                            clearWeaponCargoGlobal _newTarget;
                            clearItemCargoGlobal _newTarget;
                        },
                        [_type, _x],
                        2
                    ] call CBA_fnc_waitAndExecute;
                };
            } forEach _targetPads;
        },
        {true},
        {},
        [_targetPads, _targetClasses]
    ] call ACEFUNC(interact_menu,createAction);

    [_controller, 0, ["ACE_MainActions"], _action] call ACEFUNC(interact_menu,addActionToObject);
};
