class engineer {
    name = "Combat Engineer";
    description = "Makes things go boom or not to go boom";
    traits[] = {
        {"Engineer",true}
    };
    customVariables[] = {
        {"ace_isEngineer",2,true},
        {"TFAR_freq_sr",{"500","401","402","403","404","405","69","70"},true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanengineer_ca.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","rhsusf_acc_anpeq15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ACE_MapTools",1},{"kat_IFAK",1},{"ACE_fieldDressing",4},{"ACE_tourniquet",4},{"kat_Painkiller",1,4}}},
            {"V_tweed_msv_mk2_1",{{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"ACE_CableTie",4},{"SmokeShell",2,1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP_etool",{{"ACE_IR_Strobe_Item",1},{"B_IR_Grenade",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_Clacker",1},{"ACE_wirecutter",1},{"B_IR_Grenade",1,1},{"ACE_M14",1,1},{"SmokeShellBlue",1,1},{"SmokeShellPurple",1,1},{"SmokeShellRed",1,1},{"SmokeShell",2,1},{"ClaymoreDirectionalMine_Remote_Mag",1,1},{"DemoCharge_Remote_Mag",2,1},{"tsp_popperCharge_mag",3,1},{"tsp_stickCharge_mag",1,1}}},
            "H_tweed_ihps_tasc_rail","",
            {"Binocular","","","",{},{},""}, 
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","psq42_blk_icup"}
    };
    
    aarsenalitems[] = {
        "Rev_Demine",
        "Rev_Roller",
        "ACE_M26_Clacker",
        "ACE_Clacker",
        "ACE_DefusalKit",
        "ToolKit",
        "MineDetector",
        "lxim_breaching_BreachingCharge_Mag",
        "ACE_VMH3",
        "ACE_VMM3",
        "DemoCharge_Remote_Mag",
        "ATMine_Range_Mag",
        "SatchelCharge_Remote_Mag",
        "ClaymoreDirectionalMine_Remote_Mag",
        "SLAMDirectionalMine_Wire_Mag",
        "ACE_Fortify",
        "tsp_breach_package_mag",
        "tsp_breach_popper_auto_mag",
        "tsp_breach_popper_mag",
        "tsp_breach_linear_auto_mag",
        "tsp_breach_linear_mag",
        "tsp_breach_block_auto_mag",
        "tsp_breach_block_mag",
        "rhs_weap_M590_8RD",
        "rhs_weap_M590_5RD"
    };
};