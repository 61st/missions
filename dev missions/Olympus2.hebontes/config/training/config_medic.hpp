class medics {
	name = "Medic";
	description = "MEDIC!";
	traits[] = {
		{"Medic",true}
	};
	customVariables[] = {
		{"ace_medical_medicClass",2,true},
		{"TFAR_freq_sr",{"500","71","72","73","74","75","76","70"},true},
		// {"diwako_dui_indicators_customIcon", "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa", true},
        {"YMF_teamcolor", "MAIN", true}
	};
	icon = "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa";

	defaultLoadout[] = {
            {"SPS_hk417_13_vfg_fde_f","","","sps_vortex_spitfire_gen2_x5_RMR_tan",{"20Rnd_762x51_Mag",20},{},""},
			{},
			{"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""},
			{"U_tweed_acu_summer_ocp_blench",{{"LXIM_medbags_FirstAid",1},{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
			{"V_tweed_msv_mk2_cell_45_1",{{"LXIM_medbags_FirstAid",1},{"ACE_quikclot",11},{"SPS_20Rnd_762x51mm_M80A1_EPR",9,20},{"HandGrenade",2,1}}},{"B_simc_US_Molle_sturm_OCP_RTO",{{"ACE_quikclot",2},{"ACE_fieldDressing",15},{"ACE_morphine",6},{"ACE_epinephrine",6},{"ACE_salineIV_250",6},{"ACE_suture",6},{"ACE_splint",8},{"ACE_elasticBandage",14},{"ACE_packingBandage",14},{"ACE_painkillers",2,10}}},
			"H_tweed_ihps_tasc_rail","",
			{"Binocular","","","",{"Laserbatteries",1},{},""},
			{"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
    };
	arsenalWeapons[] = {};
	arsenalMagazines[] = {};
	arsenalItems[] = {
		"B_simc_US_Molle_sturm_OCP_RTO",
		"B_simc_US_Molle_sturm_OCP_RTO_wasser",
		"ACE_adenosine",
		"ACE_epinephrine",
		"Attachable_Helistretcher",
		"ACE_elasticBandage",
		"ACE_packingBandage",
		"ACE_bloodIV",
		"LXIM_medbags_FirstAid",
		"ACE_fieldDressing",
		"ACE_morphine",
		"ACE_quikclot",
		"ACE_salineIV",
		"ACE_salineIV_250",
		"ACE_salineIV_500",
		"ACE_splint",
		"ACE_SpraypaintRed",
		"ACE_surgicalKit",
		"ACE_suture",
		"ACE_tourniquet",
		"LXIM_defib_AED",
		"LXIM_medbags_DrugKit",
		"LXIM_medbags_Fluid",
		"LXIM_medbags_MedicKit",
		"LXIM_medbags_Trauma",
		"LXIM_naloxone",
		"LXIM_medbags_FirstAid"
	};
	arsenalBackpacks[] = {
		"brf_umbts_medic_olive",
        "brf_umbts_medic_desert"
	};
};