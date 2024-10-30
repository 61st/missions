class medics {
	name = "Medic";
	description = "MEDIC!";
	traits[] = {
		{"Medic",true}
	};
	customVariables[] = {
		{"ace_medical_medicClass",2,true},
		{"TFAR_freq_sr",{"100.1","150","150.1","33","100","75","60","35"},true}
	};
	icon = "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa";

	defaultLoadout[] = {
            {"CUP_arifle_M4A1_standard_short_black","","CUP_acc_ANPEQ_15","CUP_optic_ACOG_TA01B_RMR_Black",{"CUP_30Rnd_556x45_PMAG_BLACK_PULL",30},{},""},
            {},
            {"CUP_hgun_M17_Coyote","","","",{"CUP_21Rnd_9x19_M17_Coyote",21},{},""},
            {"U_tweed_acu_summer_ocp_unbl_trop",{{"G_Aviator",1},{"CUP_G_WristWatch",1},{"ACE_MRE_MeatballsPasta",1},{"ACE_splint",2},{"acex_intelitems_notepad",1,1},{"ACE_painkillers",1,10},{"Chemlight_red",1,1},{"ACE_Chemlight_HiRed",4,1},{"ACE_Chemlight_HiGreen",4,1},{"ACE_Chemlight_HiBlue",4,1},{"CUP_HandGrenade_M67",1,1}}},
            {"V_tweed_msv_mk2_1",{{"CUP_21Rnd_9x19_M17_Coyote",2,21},{"CUP_30Rnd_556x45_PMAG_BLACK_PULL",7,30}}},
            {"B_simc_US_Molle_sturm_OCP_thermos_od7",{{"MS_Strobe_Mag_1",1},{"B_IR_Grenade",1},{"ACE_tourniquet",4},{"ACE_splint",4},{"ACE_elasticBandage",40},{"ACE_packingBandage",20},{"ACE_salineIV",4},{"ACE_salineIV_500",10},{"ACE_epinephrine",14},{"ACE_adenosine",14},{"ACE_fieldDressing",24},{"ACE_quikclot",14},{"ACE_morphine",24},{"lxim_naloxone",14}}},
            "H_PilotHelmetHeli_B","CUP_G_Tan_Scarf_GPS",{"Laserdesignator_03","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemcTab","TFAR_anprc152","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
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