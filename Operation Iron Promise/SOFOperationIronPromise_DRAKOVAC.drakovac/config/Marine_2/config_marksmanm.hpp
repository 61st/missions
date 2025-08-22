class marksman2m {
    name = "Embassy Marksman";
    description = "Its a grunts life";
    traits[] = {};
    customVariables[] = {
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",0,true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconman_red.paa";

    defaultLoadout[] = {
            {"rhs_weap_m14ebrri","","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG",{"rhsusf_20Rnd_762x51_m80_Mag",15},{},""},{},
            {"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_JHP",15},{},""},
            {"rhs_uniform_FROG01_wd",{{"lxim_medbags_FirstAid",1},{"ACE_EarPlugs",1},{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1}}},
            {"rhsusf_spc_squadleader",{{"rhsusf_mag_15Rnd_9x19_FMJ",4,15},{"rhsusf_20Rnd_762x51_m80_Mag",7,20}}},            
            {"lxim_backpack_AssaultPackEnhanced_Solid_CoyoteBrown",{{"ACE_EntrenchingTool",1},{"ACE_M84",2,1},{"HandGrenade",1,1},{"cigs_lighter",1,100},{"cigs_morley_cigpack",1,20}}},
            "rhsusf_mich_helmet_marpatwd_alt_headset","rhs_googles_clear",{"Binocular","","","",{},{},""},
            {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}
    };
    // for 1-1
    arsenalitems[] = {
        "ACE_HuntIR_M203",
        "ACE_LAMG_SpareBarrel",
        "ACE_LWAMG_SpareBarrel",
        "rhsusf_acc_ARDEC_M240",
        "UGL_FlareGreen_F",
        "rhs_weap_m14ebrri",
        "rhsusf_acc_ACOG",
        "rhsusf_20Rnd_762x51_m118_special_Mag",
        "rhsusf_20Rnd_762x51_m80_Mag",
        "rhsusf_20Rnd_762x51_m993_Mag",
        "rhsusf_acc_anpeq15_bk",
        "rhsusf_acc_harris_bipod",
        "rhsusf_acc_ACOG_USMC"
    };
};
