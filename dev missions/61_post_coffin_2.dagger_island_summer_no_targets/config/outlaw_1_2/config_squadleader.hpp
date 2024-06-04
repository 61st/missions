class squadlead12 {
	name = "Squad Leader";
	description = "the one who looks for who to blame";
	traits[] = {};
    customVariables[] = {
		{"TFAR_freq_sr",{"500","201","202","203","204","205","69","70"},true},
		// {"diwako_dui_indicators_customIcon", "a3\ui_f\data\map\vehicleicons\iconmanofficer_ca.paa", true},
        {"lxif_teamcolor", "MAIN", true}
	};
    icon = "\A3\ui_f\data\map\vehicleicons\iconmanofficer_ca.paa";

    defaultLoadout[] = {
            {"SPS_hk417_13_vfg_fde_f","","sps_M300C_MAWL_IR_tan","sps_vortex_spitfire_gen2_x5_RMR_tan",{"SPS_20Rnd_762x51mm_M80A1_EPR",20},{},""},
            {},
            {"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""},
            {"U_tweed_acu_summer_ocp_blench",{{"LXIM_medbags_FirstAid",1},{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
            {"V_tweed_msv_mk2_cell_45_1",{{"ItemAndroidMisc",1},{"SPS_20Rnd_762x51mm_M80A1_EPR",8,20},{"HandGrenade",2,1},{"ACE_M84",2,1},{"ACE_M14",1,1},{"B_IR_Grenade",1,1},{"SmokeShell",2,1}}},{"B_simc_US_Molle_sturm_OCP_RTO",{{"LXIM_vs17_vs17",1},{"ACE_SpraypaintBlue",1},{"ACE_SpraypaintGreen",1},{"ACE_SpraypaintRed",1},{"ACE_SpraypaintWhite",1},{"ACE_SpraypaintYellow",1},{"ACE_SpraypaintBlack",1},{"ALIVE_Tablet",1},{"MS_Strobe_Mag_1",1,1},{"MS_Strobe_Mag_2",1,1},{"SmokeShellBlue",1,1},{"SmokeShellGreen",1,1},{"SmokeShellOrange",1,1},{"SmokeShellPurple",1,1},{"SmokeShellRed",1,1},{"SmokeShellYellow",1,1},{"ACE_Chemlight_HiBlue",1,1},{"ACE_Chemlight_HiGreen",1,1},{"ACE_Chemlight_HiRed",1,1}}},
            "H_tweed_ihps_tasc_rail","",
            {"LXIM_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
    };
    arsenalWeapons[] = {};
    arsenalMagazines[] = {};
    arsenalItems[] = {
		"LXIM_vs17_vs17",
		"ACE_SpottingScope",
		"ItemcTabMisc",
		"ItemcTab",
		"ItemAndroidMisc",
		"ACE_PlottingBoard",
		"LXIM_equipment_Vector_Designator",
		"LXIM_equipment_Vector_Designator_NVG",
		"ACE_VectorDay",
		"ACE_Vector",
		"Laserdesignator",
		"Laserdesignator_03",
		"Camera_lxWS",
		"B_UavTerminal",
		"lxif_vs17_vs17",
		"ACE_UAVBattery",
		"ACE_Kestrel4500"
	};
	arsenalBackpacks[] = {
		"B_simc_US_Molle_sturm_OCP_RTO",
		"B_simc_US_Molle_sturm_OCP_RTO_wasser"
	};
};
