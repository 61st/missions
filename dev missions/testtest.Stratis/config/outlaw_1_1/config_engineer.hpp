class engineer11 {
    name = "Combat Engineer";
    description = "Makes things go boom or not to go boom";
    traits[] = {
        {"Engineer",true},
        {"explosiveSpecialist",true}
    };
    customVariables[] = {
        {"ace_isEngineer",2,true},
        {"TFAR_freq_sr",{"100.1","110","110.1","33","100","75","60","35"},true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanengineer_ca.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","CUP_acc_ANPEQ_15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"CUP_hgun_M17_Black","","","",{"CUP_17Rnd_9x19_M17_Black",17},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ACE_MapTools",1},{"kat_IFAK",1},{"ACE_fieldDressing",4},{"ACE_tourniquet",4},{"kat_Painkiller",1,4}}},
            {"V_tweed_msv_mk2_1",{{"CUP_17Rnd_9x19_M17_Black",3,17},{"ACE_CableTie",4},{"SmokeShell",2,1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP_etool",{{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_EntrenchingTool",1},{"ACE_Clacker",1},{"ACE_wirecutter",1},{"B_IR_Grenade",1,1},{"ACE_M14",1,1},{"SmokeShellBlue",1,1},{"SmokeShellPurple",1,1},{"SmokeShellRed",1,1},{"SmokeShell",2,1},{"ClaymoreDirectionalMine_Remote_Mag",1,1},{"DemoCharge_Remote_Mag",2,1}}},
            "H_tweed_ihps_tasc_rail","",
            {"Binocular","","","",{},{},""}, 
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","psq42_blk_icup"}
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