private _name = call compile preprocessFileLineNumbers "custom/addons/w28fixes/functions/fnc_player_set_name.sqf";

if (!isNil "_name" && {_name != ""}) then {
    private _patchPath = format ["\custom\addons\media\images\names\%1.paa", _name];
    player setObjectTextureGlobal [0, _patchPath];
};
