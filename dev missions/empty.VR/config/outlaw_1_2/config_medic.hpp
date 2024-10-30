class medic12 {
    name = "medic";
    description = "MEDIC!";
    traits[] = {
        {"Medic",true}
    };
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"YMF_ismed", true, true},
        {"TFAR_freq_sr",{"100.1","120","120.1","33","100","75","60","35"},true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconmanmedic_green.paa";

    defaultLoadout[] = {
            {"lxim_sig_XM7","KAR_XM250_SUP","CUP_acc_ANPEQ_15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"CUP_hgun_M17_Coyote","","CUP_acc_Glock17_Flashlight","",{"CUP_21Rnd_9x19_M17_Coyote",21},{},""},
            {"U_tweed_acu_summer_ocp_trop",{{"ACE_CableTie",4},{"ACE_Flashlight_XL50",1},{"ACE_surgicalKit",1},{"psq42_blk",1}}},
            {"V_tweed_msv_mk2_cell_1",{{"ACE_epinephrine",6},{"CUP_17Rnd_9x19_M17_Coyote",3,17},{"lxim_sig_25Rnd_Fury",10,20},{"SmokeShell",3,1},{"HandGrenade",2,1}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_od7",{{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_tourniquet",4},{"ACE_splint",4},{"ACE_elasticBandage",40},{"ACE_packingBandage",20},{"ACE_salineIV",4},{"ACE_salineIV_500",10},{"ACE_epinephrine",14},{"ACE_adenosine",14},{"ACE_fieldDressing",24},{"ACE_quikclot",14},{"ACE_morphine",24},{"lxim_naloxone",14}}},
            "H_tweed_ihps_tasc_rail","G_tweed_ESS_Green",{"CUP_LRTV","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemcTab","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
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
        "lxim_backpack_Backpack_Kitbag_Medic_White"
    };
};