class crewchief {
    name = "Crew Chief";
    description = "weeeeeeeeeeeee";
    traits[] = {
		{"Engineer",true}
	};
	customVariables[] = {
		{"ace_isEngineer",2,true},
        {"TFAR_freq_sr",{"100.1","82","35.1","33","100","75","60","35"},true}
	};
    icon = "a3\ui_f\data\map\vehicleicons\iconman_ca.paa";

    defaultLoadout[] = {
            {"CUP_arifle_M4A1_standard_short_black","","CUP_acc_ANPEQ_15","SPS_EOTech_Black",{"SPS_HKG3PMAG_30Rnd_556x45_M855A1_B",30},{},""},
            {},
            {"CUP_hgun_M17_Coyote","","","",{"CUP_21Rnd_9x19_M17_Coyote",21},{},""},
            {"U_tweed_acu_summer_ocp_unbl_trop",{{"G_Aviator",1},{"CUP_G_WristWatch",1},{"ACE_MRE_MeatballsPasta",1},{"ACE_splint",2},{"acex_intelitems_notepad",1,1},{"kat_Painkiller",1,10},{"Chemlight_red",1,1},{"ACE_Chemlight_HiRed",4,1},{"ACE_Chemlight_HiGreen",4,1},{"ACE_Chemlight_HiBlue",4,1},{"CUP_HandGrenade_M67",1,1}}},
            {"V_tweed_msv_mk2_1",{{"ItemcTabHCam",1},{"CUP_21Rnd_9x19_M17_Coyote",2,21},{"SPS_HKG3PMAG_30Rnd_556x45_M856A1_B",7,30}}},
            {"B_tweed_pack_wasser_molle_ocp",{{"ACE_Canteen",1},{"ACE_Chemlight_Shield",1},{"ACE_IR_Strobe_Item",1},{"B_IR_Grenade",1},{"ACE_Flashlight_MX991",1},{"CUP_NVG_GPNVG_black",1},{"ACE_CableTie",4},{"ACE_Flashlight_XL50",1},{"ACE_MapTools",1},{"kat_AFAK",1},{"SmokeShellGreen",1,1},{"ACE_HandFlare_Green",1,1},{"MS_Strobe_Mag_1",5,1}}},
            "H_PilotHelmetHeli_B","CUP_G_Tan_Scarf_GPS",{"Laserdesignator_03","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemcTab","TFAR_anprc152","ItemCompass","ItemWatch",""}
    };
    arsenalitems[] = {
		"CUP_arifle_M4A1_standard_short_black",
        "H_PilotHelmetHeli_B",
        "H_CrewHelmetHeli_B",
        "FIR_HGU56P_Skull_Death",
        "FIR_HGU56P_Skull",
        "H_PilotHelmetHeli_I_E",
        "H_CrewHelmetHeli_I_E",
        "kat_AFAK",
        "CUP_NVG_GPNVG_black_WP",
        "CUP_NVG_GPNVG_black",
        "ACE_NVG_Wide_Black",
        "ACE_NVG_Wide_Black_WP",
        "SPS_HKG3PMAG_30Rnd_556x45_M855A1_B",
        "SPS_HKG3PMAG_30Rnd_556x45_M856A1_B",
        "SPS_HKG3PMAG_30Rnd_556x45_B_M995",
        "SPS_HKG3PMAG_30Rnd_556x45_M855A1_FDE",
        "SPS_HKG3PMAG_30Rnd_556x45_M856A1_FDE",
        "SPS_HKG3PMAG_30Rnd_556x45_FDE_M995",
        "SPS_HKG3PMAG_30Rnd_556x45_S_M995",
        "SPS_HKG3PMAG_30Rnd_556x45_M856A1_S",
        "SPS_HKG3PMAG_30Rnd_556x45_M855A1_S",
        "B_simc_US_Molle_sturm_OCP_RTO",
        "B_simc_US_Molle_sturm_OCP_RTO_wasser"
	};
};
