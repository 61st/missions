class medicpsf {
    name = "medic";
    description = "To protect and serve when you're bleeding";
    traits[] = {
        {"Medic",true}
    };
    customVariables[] = {
        {"ace_medical_medicClass",2,true},
        {"YMF_ismed", true, true},
        {"TFAR_freq_sr",{"100.1","110","110.1","33","100","75","60","35"},true}
    };
    icon = "z\LXIM\addons\media\images\Icons\iconmanmedic_green.paa";

    defaultLoadout[] = {
            {"cup_arifle_hk416_wood","CUP_muzzle_snds_G36_wood","","CUP_optic_Elcan_reflex_OD",{"CUP_30Rnd_556x45_Emag",30},{},""},{},
            {"CUP_hgun_M9A1","CUP_muzzle_snds_M9","CUP_acc_Glock17_Flashlight","",{"CUP_15Rnd_9x19_M9",15},{},""},
            {"U_I_CombatUniform",{{"ACE_EarPlugs",2},{"ACE_CableTie",4},{"ACE_IR_Strobe_Item",1},{"ACE_SpraypaintGreen",1},{"ace_marker_flags_green",4},{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_Clacker",1},{"ACE_DefusalKit",1}}},
            {"V_CarrierRigKBT_01_light_Olive_F",{{"CUP_30Rnd_556x45_Emag",11,30},{"CUP_15Rnd_9x19_M9",3,15},{"CUP_HandGrenade_M67",2,1},{"SmokeShell",1,1}}},
            {"lxim_backpack_Backpack_Kitbag_Medic_Green",{{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_tourniquet",4},{"ACE_splint",4},{"ACE_elasticBandage",40},{"psq42_blk",1},{"ACE_packingBandage",20},{"ACE_salineIV",4},{"ACE_salineIV_500",10},{"ACE_epinephrine",14},{"ACE_adenosine",14},{"ACE_fieldDressing",24},{"ACE_quikclot",14},{"ACE_morphine",24},{"lxim_naloxone",14}}},            "CUP_H_OpsCore_Covered_AAF_SF","",{"Binocular","","","",{},{},""},
            {"ItemMap","ItemMicroDAGR","TFAR_anprc152","ItemCompass","ItemWatch","CUP_NVG_GPNVG_green"}
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
