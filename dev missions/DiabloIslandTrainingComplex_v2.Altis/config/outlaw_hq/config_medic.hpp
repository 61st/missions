class medic {
    name = "Medic";
    description = "MEDIC!";
    traits[] = {
        {"Medic",true}
    };
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"YMF_ismed", true, true},
        {"TFAR_freq_sr",{"100.1","110","120","33","100","75","60","35"},true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa";

    defaultLoadout[] = {
            {"SPS_hk417_13_vfg_fde_f","","CUP_acc_ANPEQ_15","sps_vortex_spitfire_gen2_x5_RMR_tan",{"SPS_20Rnd_762x51mm_M80A1_EPR",20},{},""},{},
            {"CUP_hgun_M17_Coyote","","CUP_acc_Glock17_Flashlight","",{"CUP_21Rnd_9x19_M17_Coyote",21},{},""},
            {"U_tweed_acu_summer_ocp_trop",{{"ACE_CableTie",4},{"ACE_Flashlight_XL50",1},{"kat_IV_16",19},{"ACE_surgicalKit",1},{"psq42_blk",1},{"kat_IO_FAST",4}}},{"V_tweed_msv_mk2_cell_1",{{"ItemcTabHCam",1},{"ACE_epinephrine",6},{"kat_larynx",12},{"CUP_17Rnd_9x19_M17_Coyote",3,17},{"SPS_20Rnd_762x51mm_M80A1_EPR",10,20},{"SmokeShell",3,1},{"HandGrenade",2,1}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_od7",{{"kat_EACA",4},{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_tourniquet",4},{"ACE_splint",4},{"ACE_elasticBandage",40},{"ACE_packingBandage",20},{"kat_X_AED",1},{"kat_aatKit",5},{"kat_ncdKit",6},{"ACE_salineIV",4},{"ACE_salineIV_500",10},{"kat_atropine",10},{"kat_chestSeal",5},{"kat_lidocaine",6},{"kat_nitroglycerin",4},{"kat_norepinephrine",4},{"kat_accuvac",1}}},
            "H_tweed_ihps_tasc_rail","G_tweed_ESS_Green",{"CUP_LRTV","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemcTab","TFAR_anprc152","ItemCompass","ChemicalDetector_01_watch_F",""}
    };
    arsenalitems[] = {
        "kat_AFAK",
        "ACE_salineIV_500",
        "ACE_salineIV_250",
        "ACE_salineIV",
        "kat_X_AED",
        "kat_aatKit",
        "kat_atropine",
        "ACE_epinephrine",
        "kat_EACA",
        "kat_etomidate",
        "kat_lidocaine",
        "kat_norepinephrine",
        "kat_nitroglycerin",
        "kat_ncdKit",
        "kat_MFAK",
        "ACE_surgicalKit",
        "kat_stethoscope",
        "kat_Pulseoximeter",
        "kat_pocketBVM",
        "kat_phenylephrine",
        "kat_PervitinItem",
        "kat_PenthroxItem",
        "kat_PainkillerItem",
        "lxim_naloxone",
        "kat_naloxone",
        "kat_nalbuphine",
        "ACE_morphine",
        "kat_lorazepam",
        "kat_larynx",
        "kat_ketamine",
        "kat_guedel",
        "kat_IO_FAST",
        "kat_fentanyl",
        "kat_vacuum",
        "kat_CarbonateItem",
        "kat_amiodarone",
        "kat_BVM",
        "kat_plate",
        "kat_clamp",
        "kat_flumazenil",
        "kat_suction",
        "kat_retractor",
        "kat_scalpel",
        "ACE_suture",
        "kat_TXA",
        "lxim_backpack_Backpack_Kitbag_Medic_Green",
        "lxim_backpack_Backpack_Kitbag_Medic_MTP",
        "lxim_backpack_Backpack_Kitbag_Medic_Coyote",
        "lxim_backpack_Backpack_Kitbag_Medic_Tan",
        "lxim_backpack_Backpack_Kitbag_Medic_RGR",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO"
    };
};