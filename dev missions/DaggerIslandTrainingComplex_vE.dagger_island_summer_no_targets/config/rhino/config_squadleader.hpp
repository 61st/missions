class squadleadr {
    name = "Engineer Squad Leader";
    description = "The one who looks for who to blame";
    traits[] = {
        {"Engineer",true}
    };
    customVariables[] = {
        {"ace_isEngineer",2,true},
        {"starting_148_channel", 15, true},
        {"starting_343_channel", 49, true},
        {"starting_152_channel", "5", true}

        };

    icon = "\A3\ui_f\data\map\vehicleicons\iconmanofficer_ca.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","rhsusf_acc_anpeq15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ItemcTabHCam",1},{"lxim_medbags_mopp",1},{"lxim_medbags_FirstAid",1},{"ACE_MapTools",1},{"ACRE_PRC148",1},{"ACRE_PRC152",1},{"",1,0}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"SmokeShell",2,1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP_RTO_wasser",{{"ACRE_PRC117F",1},{"ACE_EntrenchingTool",1},{"ACE_IR_Strobe_Item",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "H_tweed_ihps_g_tasc_rail","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","","ItemCompass","ACE_Altimeter",""}
    };

    arsenalitems[] = {
        "Rev_Demine",
        "Rev_Roller",
        "ACE_M26_Clacker",
        "ACE_Clacker",
        "ACE_DefusalKit",
        "ToolKit",
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
        "rhs_weap_M590_5RD",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser"
    };
};
