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
            {"lxim_sig_XM7","KAR_XM250_SUP","CUP_acc_ANPEQ_15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"CUP_hgun_M17_Coyote","","CUP_acc_Glock17_Flashlight","",{"CUP_21Rnd_9x19_M17_Coyote",21},{},""},
            {"U_tweed_acu_summer_ocp_trop",{{"ACE_CableTie",4},{"ACE_Flashlight_XL50",1},{"ACE_surgicalKit",1},{"psq42_blk",1}},{"V_tweed_msv_mk2_cell_1",{{"ACE_epinephrine",6},{"CUP_17Rnd_9x19_M17_Coyote",3,17},{"lxim_sig_25Rnd_Fury",10,20},{"SmokeShell",3,1},{"HandGrenade",2,1}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_od7",{{"ACE_IR_Strobe_Item",1},{"B_IR_Grenade",1},{"ACE_tourniquet",4},{"ACE_splint",4},{"ACE_elasticBandage",40},{"ACE_packingBandage",20},{"ACE_salineIV",4},{"ACE_salineIV_500",10},{"ACE_epinephrine",14},{"ACE_adenosine",14},{"ACE_fieldDressing",24},{"ACE_quikclot",14},{"ACE_morphine",24},{"lxim_naloxone",14}}},
            "H_tweed_ihps_tasc_rail","G_tweed_ESS_Green",{"CUP_LRTV","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemcTab","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
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
        "ACE_painkillersItem",
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