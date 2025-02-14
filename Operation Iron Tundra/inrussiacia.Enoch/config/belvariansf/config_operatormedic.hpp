class boperatormed {
    name = "boperator-medic";
    description = "Its a grunts life";
    traits[] = {};
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"ace_isEngineer",2,true},
        {"YMF_iscom", true, true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconman_red.paa";

    defaultLoadout[] = {

{"rhs_weap_ak104_zenitco01_b33","rhs_acc_pbs1","rhs_acc_perst3_2dp_h","rhs_acc_rakursPM",{"rhs_30Rnd_762x39mm_polymer",30},{},"rhs_acc_grip_rk6"},{},{"rhs_weap_pya","","","",{"rhs_mag_9x19_17",17},{},""},
{"rhssaf_uniform_m93_oakleaf_summer",{{"FirstAidKit",1},{"ACRE_PRC148",1},{"ACE_CableTie",4},{"ACE_SpraypaintGreen",1},{"lxim_medbags_FirstAid",1},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_Clacker",1},{"ACE_Fortify",1}}},
{"rhssaf_vest_md99_woodland_rifleman_radio",{{"rhs_30Rnd_762x39mm_polymer",7,30},{"rhs_mag_9x19_17",1,17}}},
{"lxim_backpack_Backpack_Kitbag_Medic_Green",{{"ACE_CableTie",5},{"psq42_blk",1},{"ACE_epinephrine",8},{"ACE_salineIV_500",4},{"ACE_salineIV",4},{"ACE_surgicalKit",1},{"ACE_tourniquet",8},{"ACM_BVM",1},{"ACM_ChestSeal",8},{"ACM_ChestTubeKit",4},{"ACM_ElasticWrap",30},{"ACM_EmergencyTraumaDressing",20},{"ACM_GuedelTube",8},{"ACM_IGel",8},{"ACM_IO_FAST",8},{"ACM_IV_14g",8},{"ACM_IV_16g",8},{"ACM_NCDKit",8},{"ACM_NPA",8},{"ACM_PressureBandage",30},{"ACM_PressureCuff",1},{"ACM_PulseOximeter",4},{"ACM_SAMSplint",6},{"ACM_Spray_Naloxone",8},{"ACM_SuctionBag",4},{"ACM_Vial_Adenosine",8},{"ACM_Vial_Amiodarone",8},{"ACM_Vial_Epinephrine",8},{"ACM_Vial_Ketamine",4},{"ACM_Vial_Lidocaine",4},{"ACM_Vial_Morphine",8},{"ACM_Vial_TXA",8},{"ACM_Stethoscope",1},{"ACM_PocketBVM",1},{"ACM_Syringe_5",2},{"ACM_Syringe_3",2},{"ACM_Syringe_10",2},{"ACM_Syringe_1",2},{"ACM_AmmoniaInhalant",4,8},{"ACM_Inhaler_Penthrox",2,8},{"ACM_Paracetamol",2,10}}},
"LOP_H_Beanie_dpmw","G_Balaclava_TI_tna_F",{"rhs_pdu4","","","",{},{},""},{"ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Gen4_Green"}

    };
    // for 1-1
    arsenalitems[] = {
        "ACE_HuntIR_M203",
        "ACE_LWAMG_SpareBarrel",
        "ACE_LAMG_SpareBarrel",
        "lxim_sig_M250",
        "lxim_sig_M250_BLK",
        "rhs_weap_M320",
        "UGL_FlareGreen_F",
        "rhs_mag_M583A1_white",
        "rhs_mag_m576",
        "rhs_mag_m4009",
        "rhs_mag_M433_HEDP",
        "rhs_mag_M397_HET",
        "rhs_mag_m662_red",
        "rhs_mag_M663_green_cluster",
        "rhs_mag_m714_White",
        "rhs_mag_M585_white_cluster",
        "rhs_mag_m715_Green",
        "rhs_mag_M664_red_cluster",
        "rhs_mag_m713_Red",
        "rhs_mag_m661_green",
        "1Rnd_HE_Grenade_shell",
        "rhs_mag_M441_HE",
        "rhs_mag_m716_yellow",
        "rhs_weap_m32",
        "Rev_Demine",
        "Rev_Roller",
        "ACE_M26_Clacker",
        "B_UavTerminal",
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
        "Rev_Demine",
        "Rev_UAV_IED",
        "Rev_Roller",
        "ACM_FieldBloodTransfusionKit_500",
        "ACM_FieldBloodTransfusionKit_250",
        "lxim_medbags_DrugKit",
        "lxim_medbags_Fluid",
        "ACM_Vial_Ondansetron",
        "ACM_Vial_CalciumChloride",
        "ACM_Vial_Esmolol",
        "ACM_Vial_Ertapenem",
        "ACE_epinephrine",
        "ACE_plasmaIV_250",
        "ACE_plasmaIV_500",
        "ACE_plasmaIV",
        "ACE_salineIV_250",
        "ACE_salineIV_500",
        "ACE_salineIV",
        "ACE_surgicalKit",
        "ACE_suture",
        "ACE_tourniquet",
        "ACM_ACCUVAC",
        "ACM_AED",
        "ACM_AmmoniaInhalant",
        "ACM_BVM",
        "ACM_ChestSeal",
        "ACM_ChestTubeKit",
        "ACM_ElasticWrap",
        "ACM_EmergencyTraumaDressing",
        "ACM_GuedelTube",
        "ACM_IGel",
        "ACM_Inhaler_Penthrox",
        "ACM_IO_EZ",
        "ACM_IO_FAST",
        "ACM_IV_14g",
        "ACM_IV_16g",
        "ACM_NCDKit",
        "ACM_NPA",
        "ACM_OxygenTank_425",
        "ACM_Paracetamol",
        "ACM_PocketBVM",
        "ACM_PressureBandage",
        "ACM_PressureCuff",
        "ACM_PulseOximeter",
        "ACM_SAMSplint",
        "ACM_Spray_Naloxone",
        "ACM_Stethoscope",
        "ACM_SuctionBag",
        "ACM_Syringe_1",
        "ACM_Syringe_10",
        "ACM_Syringe_3",
        "ACM_Syringe_5",
        "ACM_Vial_Adenosine",
        "ACM_Vial_Amiodarone",
        "ACM_Vial_Epinephrine",
        "ACM_Vial_Ketamine",
        "ACM_Vial_Lidocaine",
        "ACM_Vial_Morphine",
        "ACM_Vial_TXA",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "lxim_backpack_Backpack_Kitbag_Medic_Black",
        "lxim_backpack_Backpack_Kitbag_Medic_Coyote",
        "lxim_backpack_Backpack_Kitbag_Medic_Green",
        "lxim_backpack_Backpack_Kitbag_Medic_MTP",
        "lxim_backpack_Backpack_Kitbag_Medic_RGR",
        "lxim_backpack_Backpack_Kitbag_Medic_Sage",
        "lxim_backpack_Backpack_Kitbag_Medic_Tan",
        "lxim_backpack_Backpack_Kitbag_Medic_White",
        "tun_tablet",
        "Rev_Pelican",
        "Rev_darter",
        "Rev_Designator",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "ACE_artilleryTable",
        "ACE_PlottingBoard",
        "acex_intelitems_notepad",
        "B_UavTerminal",
        // "ItemGPSMisc",
        "ACE_RangeCard",
        "uh60_jvmf_tablet",
        "lxim_vs17_vs17",
        "ACRE_VHF30108SPIKE",
        "ACRE_VHF30108",
        "ACRE_VHF30108MAST"
    };
};
