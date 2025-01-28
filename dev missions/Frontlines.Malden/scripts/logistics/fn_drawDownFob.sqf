/*
	File: fn_drawDownFob.sqf
	Author: Dom
	Description: Draws down a FOB and deletes its namespace
*/
params [
	["_object",objNull,[objNull]]
];
if (count YMF_allFOBs isEqualTo 1) exitWith {["You cannot draw down your only FOB."] call YMF_fnc_notify};

private _action = [
	"Are you sure you want to draw down this FOB, any resources will be lost, all objects will remain until the next restart and you will be given a new FOB box.",
	"Draw down FOB",
	"Draw down",
	"Cancel"
] call BIS_fnc_guiMessage;

if (_action) then {
	private _pos = getPosATL _object;
	deleteVehicle _object;

	private _nearFOB = [_pos] call YMF_fnc_getNearestFob;
	private _fobVariable = _nearFOB getVariable "YMF_fobVariable";
	YMF_allFOBs = YMF_allFOBs - [_nearFOB];
	publicVariable "YMF_allFOBs";
	deleteVehicle _nearFOB;
	deleteMarker _fobVariable;

	private _fobBoxClass = selectRandom (getArray(missionConfigFile >> "Logi_Setup" >> "fobBoxes"));
	private _fobBox = createVehicle [_fobBoxClass,_pos,[],0,"NONE"];
};