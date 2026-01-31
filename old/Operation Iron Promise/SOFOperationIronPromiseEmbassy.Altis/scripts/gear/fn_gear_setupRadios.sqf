#include "..\script_component.hpp"
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function setup radios and apply radio channel to them on server and player.
 * Needs to be in init.sqf
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call ymf_fnc_gear_setupRadios
 *
 * Public: No
 */

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {};
if (!EGVAR(Settings,enableRadios)) exitWith {};

// ACRE
if (EGVAR(patches,usesACRE)) exitWith {
    if (count allMissionObjects "acre_api_basicMissionSetup" > 0)  exitWith {};
    if (count allMissionObjects "acre_api_nameChannels" > 0)       exitWith {};

    SHOW_INFO("GearRadio", "Setting up ACRE preset...");

    #include "..\..\config\config_radio.hpp"

    if (isNil "YMF_SRRADIOS") then {YMF_SRRADIOS = ["ACRE_PRC148"];};
    if (isNil "YMF_LRRADIOS") then {YMF_LRRADIOS = ["ACRE_PRC152","ACRE_PRC117F"];};

    _noProgram = ["ACRE_PRC343", "ACRE_SEM70", "PRC-77"]; // these radios work slightly differently and don't need to be programmed

    // remove 343 and SEM70 from programming list
    _srradios = []; _lrradios = [];
    {
        if (!(_x in _noProgram)) then {_srradios pushBackUnique _x};
    } forEach YMF_SRRADIOS;
    {
        if (!(_x in _noProgram)) then {_lrradios pushBackUnique _x};
    } forEach YMF_LRRADIOS;

    // define unused channels
    _usedSRchannels = []; _usedLRchannels = [];
    {_usedSRchannels pushBackUnique (_x#0);} forEach YMF_SR_CHANNELS;
    {_usedLRchannels pushBackUnique (_x#0);} forEach YMF_LR_CHANNELS;

    // SETUP CONFIG ///////////////////////////////////////////////////////////////////////////////////

    _labelField = [
        ["ACRE_PRC148", "label"],
        ["ACRE_PRC152", "description"],
        ["ACRE_PRC117F", "name"]
    ];

    {
        _radioClass = _x;
        _chanList = [];
        _usedList = [];
        if (_radioClass in _srradios) then {
            _chanlist = YMF_SR_CHANNELS;
            _usedList = _usedSRchannels;
        };
        if (_radioClass in _lrradios) then {
            _chanList = YMF_LR_CHANNELS;
            _usedList = _usedLRchannels;
        };
        // get the field property relevant to the radio
        _field = "";
        {
            if (_radioClass == _x#0) then {_field = _x#1};
        } forEach _labelField;

        {
            _channel = _x#0;
            _freq = _x#1;
            _label = toUpper (_x#2); 

            // set frequencies
            [_radioClass, "default", _channel, "frequencyTX", _freq] call acre_api_fnc_setPresetChannelField;
            [_radioClass, "default", _channel, "frequencyRX", _freq] call acre_api_fnc_setPresetChannelField;

            if (_radioClass != "ACRE_SEM52SL") then { // (SEM52 has no label)

                // // if the radio is a 148, append channel num to label (isn't on display)
                // if (_radioClass == "ACRE_PRC148") then {
                //     _label = format ["0%2-%1", _label, _channel];
                // };

                // set label
                [_radioClass, "default", _channel, _field, _label] call acre_api_fnc_setPresetChannelField;
                
            };
        } forEach _chanList;

        // label unused channels
        if (_radioClass != "ACRE_SEM52SL") then {
            private _numChannels = 100;
            if (_radioClass == "ACRE_PRC148") then {_numChannels = 32;};
            
            for "_i" from 1 to _numChannels do {
                if (!(_i in _usedList)) then {
                    _label = "";
                    if (_radioClass == "ACRE_PRC148") then {
                        _label = format ["UNUSED-%1", _i];
                    } else {
                        _label = "UNUSED";
                    };
                    [_radioClass, "default", _i, _field, _label] call acre_api_fnc_setPresetChannelField;
                };
            };
        };

    } forEach (_srradios + _lrradios);

    // // Sets a manual frequency number for each will add 1 each channel
    // GVAR(FREQUENCY) = 100;
    // GVAR(MFREQUENCY) = 200;

    // // Handle Radio preset from cba settings
    // private _lrChannels = parseSimpleArray EGVAR(Settings,LRsetRadioChannelNames);
    // if !(_lrChannels isEqualType []) exitWith {SHOW_CHAT_ERROR("GearRadio", "LR Radio array has not been setup correctly.")};

    // private _mrChannels = parseSimpleArray EGVAR(Settings,MRsetRadioChannelNames);
    // if !(_mrChannels isEqualType []) exitWith {SHOW_CHAT_ERROR("GearRadio", "MR Radio array has not been setup correctly.")};

    // // Set LR radio labels and frequency
    // {
    //     private _radio = _x;
    //     {
    //         [_radio, "default", _forEachIndex + 1, "label", _x] call acre_api_fnc_setPresetChannelField;
    //         [_radio, "default", _forEachIndex + 1, "frequencyTX", _forEachIndex + GVAR(FREQUENCY)] call acre_api_fnc_setPresetChannelField;
    //         [_radio, "default", _forEachIndex + 1, "frequencyRX", _forEachIndex + GVAR(FREQUENCY)] call acre_api_fnc_setPresetChannelField;
    //     } forEach _lrChannels;
    //     [_radio, "default"] call acre_api_fnc_setPreset;
    // } forEach ["ACRE_PRC152", "ACRE_PRC148", "ACRE_PRC117F"];

    // // Set MR radio labels and frequency
    // {
    //     private _radio = _x;
    //     {
    //         [_radio, "default", _forEachIndex + 1, "label", _x] call acre_api_fnc_setPresetChannelField;
    //         [_radio, "default", _forEachIndex + 1, "frequencyTX", _forEachIndex + GVAR(MFREQUENCY)] call acre_api_fnc_setPresetChannelField;
    //         [_radio, "default", _forEachIndex + 1, "frequencyRX", _forEachIndex + GVAR(MFREQUENCY)] call acre_api_fnc_setPresetChannelField;
    //     } forEach _mrChannels;
    //     [_radio, "default"] call acre_api_fnc_setPreset;
    // } forEach [ "ACRE_PRC148"];
};

// TFAR
if (EGVAR(patches,usesTFAR)) exitWith {
    SHOW_INFO("GearRadio", "TFAR Setup complete...");
};

SHOW_CHAT_ERROR("GearRadio", "Fatal");
