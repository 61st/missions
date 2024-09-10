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
            {"lxim_sig_XM7","KAR_XM250_SUP","CUP_acc_ANPEQ_15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",20},{},""},{},
            {"CUP_hgun_M17_Black","","","",{"CUP_17Rnd_9x19_M17_Black",17},{},""},
            {"U_tweed_acu_summer_ocp_tuck_trop",{{"ACE_IR_Strobe_Item",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"CUP_17Rnd_9x19_M17_Black",2,17}}},
            {"V_tweed_msv_mk2_cell_45_1",{{"lxim_sig_25Rnd_Fury",9,20},{"HandGrenade",2,1}}}, 
            {"B_simc_US_Molle_sturm_OCP_etool",{{"ACE_IR_Strobe_Item",1},{"B_IR_Grenade",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_Clacker",1},{"ACE_wirecutter",1},{"B_IR_Grenade",1,1},{"ACE_M14",1,1},{"SmokeShellBlue",1,1},{"SmokeShellPurple",1,1},{"SmokeShellRed",1,1},{"SmokeShell",2,1},{"ClaymoreDirectionalMine_Remote_Mag",1,1},{"DemoCharge_Remote_Mag",2,1},{"tsp_popperCharge_mag",3,1},{"tsp_stickCharge_mag",1,1}}},
            "H_tweed_ihps_tasc_rail","",
            {"Binocular","","","",{},{},""}, 
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ACE_Altimeter","psq42_blk_icup"}
    };
    
    arsenalitems[] = {
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
        "CUP_sgun_M1014_Entry",
        "CUP_sgun_M1014_Entry_vfg"
    };
};