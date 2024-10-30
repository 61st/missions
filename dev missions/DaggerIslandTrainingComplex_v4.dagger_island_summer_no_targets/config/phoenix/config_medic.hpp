class medicp {
    name = "Flight Medic";
    description = "MEDIC!";
    traits[] = {
        {"Medic",true}
    };
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"YMF_ismed", true, true},
        {"TFAR_freq_sr",{"100.1","82","35.1","33","100","75","60","35"},true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa";

    defaultLoadout[] = {
            {"CUP_arifle_M4A1_standard_short_black","","rhsusf_acc_anpeq15","CUP_optic_ACOG_TA01B_RMR_Black",{"CUP_30Rnd_556x45_PMAG_BLACK_PULL",30},{},""},
            {},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ACE_MapTools",1},{"kat_IFAK",1},{"ACE_fieldDressing",4},{"ACE_tourniquet",4},{"kat_Painkiller",1,4}}},
            {"V_tweed_msv_mk2_1",{{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"ACE_CableTie",4},{"SmokeShell",2,1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"HandGrenade",2,1},{"CUP_30Rnd_556x45_PMAG_BLACK_PULL",12,30}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_od7",{{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_tourniquet",4},{"ACE_splint",4},{"ACE_elasticBandage",40},{"ACE_packingBandage",20},{"ACE_salineIV",4},{"ACE_salineIV_500",10},{"ACE_epinephrine",14},{"ACE_adenosine",14},{"ACE_fieldDressing",24},{"ACE_quikclot",14},{"ACE_morphine",24},{"lxim_naloxone",14}}},
            "H_PilotHelmetHeli_B","CUP_G_Tan_Scarf_GPS",{"Laserdesignator_03","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
        "kat_IV_16",
        "kat_aatKit",
        "kat_accuvac",
        "kat_AED",
        "kat_AFAK",
        "kat_amiodarone",
        "kat_atropine",
        "kat_Bubble_Wrap",
        "kat_BVM",
        "kat_Carbonate",
        "kat_chestSeal",
        "kat_clamp",
        "kat_coag_sense",
        "kat_crossPanel",
        "kat_EACA",
        "KAT_Empty_bloodIV_250",
        "KAT_Empty_bloodIV_500",
        "kat_epinephrineIV",
        "kat_etomidate",
        "kat_fentanyl",
        "kat_flumazenil",
        "kat_guedel",
        "kat_IO_FAST",
        "kat_IV_16",
        "kat_ketamine",
        "kat_larynx",
        "kat_lidocaine",
        "kat_lorazepam",
        "kat_MFAK",
        "kat_nalbuphine",
        "kat_naloxone",
        "kat_nasal",
        "kat_ncdKit",
        "kat_nitroglycerin",
        "kat_norepinephrine",
        "kat_oxygenTank_150",
        "kat_oxygenTank_300",
        "kat_Painkiller",
        "kat_Penthrox",
        "kat_phenylephrine",
        "kat_phenylephrineAuto",
        "kat_plate",
        "kat_pocketBVM",
        "kat_Pulseoximeter",
        "kat_reboa",
        "kat_retractor",
        "kat_scalpel",
        "kat_stethoscope",
        "kat_suction",
        "kat_TXA",
        "kat_ultrasound",
        "kat_vacuum",
        "ACE_surgicalKit",
        "kat_X_AED",
        "CUP_30Rnd_556x45_PMAG_BLACK_PULL",
        "CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red",
        "H_PilotHelmetHeli_B",
        "H_CrewHelmetHeli_B",
        "FIR_HGU56P_Skull_Death",
        "FIR_HGU56P_Skull",
        "H_PilotHelmetHeli_I_E",
        "H_CrewHelmetHeli_I_E",
        "CUP_arifle_M4A1_standard_short_black",
        "ACE_salineIV_500",
        "ACE_salineIV_250",
        "ACE_salineIV",
        "ACE_epinephrine",
        "ACE_surgicalKit",
        "lxim_naloxone",
        "ACE_morphine",
        "ACE_suture",
        "ACE_tourniquet",
        "ACE_painkillers",
        "lxim_backpack_Backpack_Kitbag_Medic_Green",
        "lxim_backpack_Backpack_Kitbag_Medic_MTP",
        "lxim_backpack_Backpack_Kitbag_Medic_Coyote",
        "lxim_backpack_Backpack_Kitbag_Medic_Tan",
        "lxim_backpack_Backpack_Kitbag_Medic_RGR",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "ACE_adenosine",
        "ACE_fieldDressing",
        "ACE_elasticBandage",
        "ACE_packingBandage",
        "ACE_splint",
        "ACE_quikclot",
        "lxim_backpack_Backpack_Kitbag_Medic_Black",
        "lxim_backpack_Backpack_Kitbag_Medic_Sage",
        "lxim_backpack_Backpack_Kitbag_Medic_White",
        "lxim_backpack_Backpack_Kitbag_Medic_Black",
        "lxim_backpack_Backpack_Kitbag_Medic_Sage",
        "lxim_backpack_Backpack_Kitbag_Medic_White",
        "U_B_HeliPilotCoveralls"
    };
};
