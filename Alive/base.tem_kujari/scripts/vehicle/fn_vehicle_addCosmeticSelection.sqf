#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add cosmetic customization action to vehicles
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call YMF_fnc_vehicle_addCosmeticSelection;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

private _textures = [
    // USAF_A10
    ["USAF_A10", "Clean", [
        "",
        {
            _vehicle animateSource ["serial_nose",1, true];
            _vehicle animateSource ["serial_gear",0, true];
            [_vehicle, [
                [0, "\usaf_a10\skins\a10_01_worn_co.paa"],

                // Tail Number
                [25, ""], //tail_art
                [26, "z\lxim\addons\media\images\logo_512.paa"],
                [27, "\usaf_main\characters\u_dg.paa"],
                [28, "\usaf_main\characters\s_dg.paa"],

                [29,"\usaf_main\data\tail\fy\70_d.paa"],

                [30, "\usaf_main\characters\numbers\n_0_dg.paa"],
                [21, "\usaf_main\characters\numbers\n_6_dg.paa"],
                [22, "\usaf_main\characters\numbers\n_1_dg.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        }
    ]],
    ["USAF_A10", "Shark", [
        "",
        {
            _vehicle animateSource ["serial_nose",0, true];
            _vehicle animateSource ["serial_gear",1, true];
            [_vehicle, [
                [0, "\usaf_a10\skins\a10_01_worn_shark_co.paa"],

                // Tail Number
                [25, ""], //tail_art
                [26, "z\lxim\addons\media\images\logo_512.paa"],
                [27, "\usaf_main\characters\u_dg.paa"],
                [28, "\usaf_main\characters\s_dg.paa"],

                [29,"\usaf_main\data\tail\fy\70_d.paa"],

                [30, "\usaf_main\characters\numbers\n_0_dg.paa"],
                [21, "\usaf_main\characters\numbers\n_6_dg.paa"],
                [22, "\usaf_main\characters\numbers\n_1_dg.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        }
    ]],

    ["lxim_vanilla_mk20_base_F", "Toggle Camo Net", [
        "",
        {
            private _camoNetMounted = _vehicle animationSourcePhase "showCamonetHull";
            if (_camoNetMounted == 1) then {
                _vehicle animateSource ["showCamonetHull",0, true];
            } else {
                _vehicle animateSource ["showCamonetHull",1, true];
            };
        }
    ]],
    ["lxim_vanilla_mk20_base_F", "Toggle Slats", [
        "",
        {
            private _slatsAreAttached = _vehicle animationSourcePhase "showSLATHull";
            if (_slatsAreAttached == 1) then {
                _vehicle animateSource ["showSLATHull",0, true];
            } else {
                _vehicle animateSource ["showSLATHull",1, true];
            };
        }
    ]],
    ["lxim_vanilla_mk20", "M20A2 Olive", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\vanilla\data\outlaw_01_ext_g.paa"],
                [1, "z\lxim\addons\vanilla\data\outlaw_02_ext_g.paa"],
                [2, "z\lxim\addons\vanilla\data\outlaw_turret_g.paa"],
                [3, "z\lxim\addons\vanilla\data\outlaw_03_ext_g.paa"],
                [4, "z\lxim\addons\vanilla\data\camonet_woodland_co.paa"],
                [5, "z\lxim\addons\vanilla\data\cage_woodland_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["lxim_vanilla_mk20", "M20A2 Desert", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\vanilla\data\outlaw_01_ext_d.paa"],
                [1, "z\lxim\addons\vanilla\data\outlaw_02_ext_d.paa"],
                [2, "z\lxim\addons\vanilla\data\outlaw_turret_d.paa"],
                [3, "z\lxim\addons\vanilla\data\outlaw_03_ext_d.paa"],
                [4, "z\lxim\addons\vanilla\data\camonet_desert_co.paa"],
                [5, "z\lxim\addons\vanilla\data\cage_desert_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["lxim_vanilla_mev_mk20", "M20A2 Olive", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\vanilla\data\med_01_ext_g.paa"],
                [1, "z\lxim\addons\vanilla\data\med_02_ext_g.paa"],
                [2, "z\lxim\addons\vanilla\data\outlaw_turret_g.paa"],
                [3, "z\lxim\addons\vanilla\data\outlaw_03_ext_g.paa"],
                [4, "z\lxim\addons\vanilla\data\camonet_woodland_co.paa"],
                [5, "z\lxim\addons\vanilla\data\cage_woodland_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["lxim_vanilla_mev_mk20", "M20A2 Desert", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\vanilla\data\med_01_ext_d.paa"],
                [1, "z\lxim\addons\vanilla\data\med_02_ext_d.paa"],
                [2, "z\lxim\addons\vanilla\data\outlaw_turret_d.paa"],
                [3, "z\lxim\addons\vanilla\data\outlaw_03_ext_d.paa"],
                [4, "z\lxim\addons\vanilla\data\camonet_desert_co.paa"],
                [5, "z\lxim\addons\vanilla\data\cage_desert_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["lxim_vanilla_mev_mk20", "Toggle Camo Net", [
        "",
        {
            private _camoNetMounted = _vehicle animationSourcePhase "showCamonetHull";
            if (_camoNetMounted == 1) then {
                _vehicle animateSource ["showCamonetHull",0, true];
            } else {
                _vehicle animateSource ["showCamonetHull",1, true];
            };
        }
    ]],
    ["lxim_vanilla_mev_mk20", "Toggle Slats", [
        "",
        {
            private _slatsAreAttached = _vehicle animationSourcePhase "showSLATHull";
            if (_slatsAreAttached == 1) then {
                _vehicle animateSource ["showSLATHull",0, true];
            } else {
                _vehicle animateSource ["showSLATHull",1, true];
            };
        }
    ]],

    ["lxim_vanilla_repair_mk20", "Toggle Camo Net", [
        "",
        {
            private _camoNetMounted = _vehicle animationSourcePhase "showCamonetHull";
            if (_camoNetMounted == 1) then {
                _vehicle animateSource ["showCamonetHull",0, true];
            } else {
                _vehicle animateSource ["showCamonetHull",1, true];
            };
        }
    ]],
    ["lxim_vanilla_repair_mk20", "Toggle Slats", [
        "",
        {
            private _slatsAreAttached = _vehicle animationSourcePhase "showSLATHull";
            if (_slatsAreAttached == 1) then {
                _vehicle animateSource ["showSLATHull",0, true];
            } else {
                _vehicle animateSource ["showSLATHull",1, true];
            };
        }
    ]],
    ["lxim_vanilla_repair_mk20", "M20A2 Olive", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\vanilla\data\outlaw_01_ext_g.paa"],
                [1, "z\lxim\addons\vanilla\data\outlaw_02_ext_g.paa"],
                [2, "z\lxim\addons\vanilla\data\outlaw_turret_g.paa"],
                [3, "z\lxim\addons\vanilla\data\outlaw_03_ext_g.paa"],
                [4, "z\lxim\addons\vanilla\data\camonet_woodland_co.paa"],
                [5, "z\lxim\addons\vanilla\data\cage_woodland_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["lxim_vanilla_repair_mk20", "M20A2 Desert", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\vanilla\data\outlaw_01_ext_d.paa"],
                [1, "z\lxim\addons\vanilla\data\outlaw_02_ext_d.paa"],
                [2, "z\lxim\addons\vanilla\data\outlaw_turret_d.paa"],
                [3, "z\lxim\addons\vanilla\data\outlaw_03_ext_d.paa"],
                [4, "z\lxim\addons\vanilla\data\camonet_desert_co.paa"],
                [5, "z\lxim\addons\vanilla\data\cage_desert_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["MRAP_01_base_F", "Olive", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\hunter\MRAP_01_base_61G_CO.paa"],
                [1, "z\lxim\addons\media\images\vehicles\hunter\MRAP_01_adds_olive_CO.paa"],
                [2, "z\lxim\addons\media\images\vehicles\hunter\Turret_CO_G.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["MRAP_01_base_F", "Base", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\hunter\MRAP_01_base_61_CO.paa"],
                [1, "z\lxim\addons\media\images\vehicles\hunter\MRAP_01_adds_co.paa"],
                [2, "z\lxim\addons\media\images\vehicles\hunter\turret_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["MRAP_01_base_F", "Desert", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\hunter\MRAP_01_base_61D_CO.paa"],
                [1, "z\lxim\addons\media\images\vehicles\hunter\MRAP_01_adds_co.paa"],
                [2, "z\lxim\addons\media\images\vehicles\hunter\Turret_CO_D.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["B_abramsx", "Storm King Desert", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_sand_stormking.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Iron Rain Desert", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_sand_ironrain.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Tempest Desert", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_sand_tempest.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["B_abramsx", "Storm King", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_nato_stormking.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Iron Rain", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_nato_ironrain.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Tempest", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_nato_tempest.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["B_abramsx", "Storm King Brown", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_brown_stormking.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Iron Rain Brown", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_brown_ironrain.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Tempest Brown", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_brown_tempest.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],

    ["B_abramsx", "Storm King CTRG Arid", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_ctrgd_stormking.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Iron Rain CTRG Arid", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_ctrgd_ironrain.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Tempest CTRG Arid", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_ctrgd_tempest.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Storm King Dark Green", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_dgreen_stormking.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Iron Rain Dark Green", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_dgreen_ironrain.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Tempest Dark Green", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_dgreen_tempest.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Storm King Green", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_green_stormking.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Iron Rain Green", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_green_ironrain.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]],
    ["B_abramsx", "Tempest Green", [
        "",
        {
            [_vehicle, [
                [0, "z\lxim\addons\media\images\vehicles\m1x\abramsx_green_tempest.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setPlateNumber "A 3/61 MECH";
        }
    ]]
];

{
    _x params ["_classname", "_displayName", "_textureCode"];
    if (_vehicle isKindOf _classname) then {

        private _statement = {
            params ["_vehicle", "_player", "_params"];
            _params params [["_texture", "", [""]], ["_code", {}, [{}]]];

            call _code;
            [
                [],
                ["Vehicle art have been changed"],
                [_texture, 10],
                [""]
            ] call CBA_fnc_notify;
        };

        private _category = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat), QEGVAR(Actions_Vehicle,Cosmetic_Cat)];
        private _action = [format ["YMF_Cosmetic_%1_%2", _classname, _forEachIndex], _displayName, "", _statement, {true}, nil, _textureCode] call ace_interact_menu_fnc_createAction;
        [_vehicle, 1, _category, _action] call ace_interact_menu_fnc_addActionToObject;

        INFO_4("VehicleCosmeticSelector", "Selector for classname '%1' named '%2' added to %3 (%4)", typeOf _vehicle, _displayName, _vehicle, typeOf _vehicle);
    };
} forEach _textures;
