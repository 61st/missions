class jtac11 {
    name = "JTAC";
    description = "Big bada boom";
    traits[] = {
        {"UAVHacker",true}
    };
    customVariables[] = {
        {"YMF_iscom", true, true},
        {"draWhitelisted",TRUE,TRUE},
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",0,true}
    };
    
    icon = "a3\ui_f\data\map\vehicleicons\iconmanexplosive_ca.paa";

    defaultLoadout[] = {
            {"rhs_weap_m4a1","","rhsusf_acc_anpeq15A","lxim_equipment_optic_DMS",{"30Rnd_556x45_Stanag",30},{},""},{"rhs_weap_m72a7","","","",{},{},""},
            {"rhsusf_weap_glock17g4","","MHS_X300U","",{"rhsusf_mag_17Rnd_9x19_FMJ",17},{},""},
            {"rhsgref_uniform_olive",{{"FirstAidKit",1},{"lxim_medbags_FirstAid",1}}},
            {"V_CarrierRigKBT_01_light_EAF_F",{{"rhsusf_mag_17Rnd_9x19_FMJ",4,17},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",12,30}}},
            {"B_simc_US_Molle_sturm_OCP_RTO_wasser",{{"ACRE_PRC117F",1},{"ACE_EntrenchingTool",1},{"MS_Strobe_Mag_1",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "H_tweed_ech_casque_base","",{"Binocular","","","",{},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152_1","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
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
        "ACRE_VHF30108MAST",
        "rhs_weap_M320"
    };
};
