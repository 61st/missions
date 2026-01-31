class saviorr {
    name = "Savior Test";
    description = "Makes things go boom or not to go boom";
    traits[] = {
        {"Engineer",true},
        {"explosiveSpecialist",true}
    };
    customVariables[] = {
        {"ace_isEngineer",2,true},
        {"ace_medical_medicClass",0,true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanengineer_ca.paa";

    defaultLoadout[] = {
            {"rhs_weap_ak74m","rhs_acc_dtk","","",{"rhs_30Rnd_545x39_7N10_AK",30},{},""},{},
            {"rhs_weap_pya","","","",{"rhs_mag_9x19_17",17},{},""},
            {"rhs_uniform_vkpo_gloves",{{"lxim_medbags_FirstAid",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_CableTie",4},{"ItemcTabHCam",1},{"cigs_lighter",1,100},{"cigs_morley_cigpack",1,20}}},
            {"rhs_6b45_rifleman_2",{{"rhs_30Rnd_545x39_7N10_plum_AK",11,30},{"rhs_mag_9x19_17",2,17}}},
            {"lxim_backpack_Kitbag_Solid_Ranger_Green",{{"ToolKit",1},{"ACE_Fortify",1},{"ACE_wirecutter",1},{"ACE_DefusalKit",1},{"MineDetector",1},{"ACE_Clacker",1},{"rhs_mag_rgd5",2,1},{"SmokeShell",2,1},{"DemoCharge_Remote_Mag",2,1}}},
            "rhs_6b47_emr_1","",{"rhs_pdu4","","","",{},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","rhs_1PN138"}
    };
    
    arsenalitems[] = {
        "Rev_Demine",
        "Rev_Roller",
        "ACE_M26_Clacker",
        "ACE_Clacker",
        "ACE_DefusalKit",
        "Item_O_UavTerminal",
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
        "Rev_Demine",
        "Rev_UAV_IED",
        "Rev_Roller",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "TFAR_rt1523g",
        "TFAR_rt1523g_rhs",
        "TFAR_rt1523g_bwmod",
        "TFAR_rt1523g_black",
        "TFAR_rt1523g_big_rhs",
        "TFAR_rt1523g_big"
    };
};