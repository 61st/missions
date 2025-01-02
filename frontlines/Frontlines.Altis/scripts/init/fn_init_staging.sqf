#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function setup the staging system and automaticly creates respawn marker staging zones.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call YMF_fnc_init_staging
 *
 * Public: No
 */

if !(EGVAR(Settings,enableStagingSystem)) exitWith {};

INFO("Staging", "Setting up Staging");

private _stagingZoneMarkers = [];
{
    private _markerName = [_x, 0, 11] call BIS_fnc_trimString;
    _markerName = toLower _markerName;
    if (_markerName in ["zone_staging", "respawn_west", "YMF_staging_zone","TLZ"]) then {
        private _type = markerShape _x;
        private _pos = getMarkerPos _x;
        _x setMarkerAlpha 0;
        _stagingZoneMarkers append [[_x, _type, _pos]];
    };
} forEach allMapMarkers;

{
    _x params["_marker", "_type", "_pos"];
    private _size = if (_type == "ICON") then {60} else {_type};
    private _zone = if (_type == "ICON") then {_pos} else {_marker};
    [_zone, _size] call FUNC(addStagingZone);
} forEach _stagingZoneMarkers;




INFO_1("Staging", "Staging options for %1 have been setup.", name player)
