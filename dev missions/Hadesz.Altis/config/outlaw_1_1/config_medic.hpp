class medic11r {
	name = "medic";
	description = "MEDIC!";
	traits[] = {
		{"Medic",true}
	};
	customVariables[] = {
		{"ace_medical_medicClass",2,true},
		{"TFAR_freq_sr",{"500","101","102","103","104","105","68","69"},true},
		{"diwako_dui_indicators_customIcon", "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa", true},
        {"sixone_teamcolor", "RED", true}
	};
	icon = "z\sixtyone\addons\media\images\Icons\iconmanmedic_red.paa";

	defaultLoadout[] = {
            {"SPS_hk417_13_vfg_fde_f","","","sps_vortex_spitfire_gen2_x5_RMR_tan",{"20Rnd_762x51_Mag",20},{},""},
			{},
			{"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""},
			{"U_tweed_acu_summer_ocp_blench",{{"sixtyone_medbags_FirstAid",1},{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
			{"V_tweed_msv_mk2_cell_45_1",{{"sixtyone_medbags_FirstAid",1},{"ACE_quikclot",11},{"SPS_20Rnd_762x51mm_M80A1_EPR",9,20},{"HandGrenade",2,1}}},{"B_simc_US_Molle_sturm_OCP_RTO",{{"ACE_quikclot",2},{"ACE_fieldDressing",15},{"ACE_morphine",6},{"kat_chestSeal",6},{"kat_aatKit",3},{"kat_ncdKit",3},{"kat_stethoscope",1},{"kat_larynx",6},{"ACE_epinephrine",6},{"kat_IV_16",8},{"kat_nitroglycerin",2},{"kat_phenylephrine",2},{"kat_atropine",2},{"kat_naloxone",2},{"ACE_salineIV_250",6},{"kat_Pulseoximeter",1},{"kat_pocketBVM",1},{"kat_AED",1},{"kat_MFAK",1},{"ACE_suture",6},{"ACE_splint",8},{"kat_amiodarone",2},{"ACE_elasticBandage",14},{"ACE_packingBandage",14},{"kat_clamp",2},{"kat_EACA",2},{"kat_etomidate",1},{"kat_IO_FAST",4},{"kat_fentanyl",2},{"KAT_Empty_bloodIV_250",2},{"KAT_Empty_bloodIV_500",2},{"kat_lorazepam",2},{"kat_lidocaine",2},{"kat_ketamine",2},{"kat_guedel",6},{"kat_flumazenil",2},{"kat_suction",1},{"kat_Painkiller",2,10},{"kat_Penthrox",4,10},{"kat_Carbonate",3,10},{"kat_oxygenTank_150",2,100},{"kat_Pervitin",2,8}}},
			"H_tweed_ihps_tasc_rail","",
			{"Binocular","","","",{"Laserbatteries",1},{},""},
			{"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
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
		"sixtyone_medbags_FirstAid",
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
		"sixtyone_defib_AED",
		"sixtyone_medbags_DrugKit",
		"sixtyone_medbags_Fluid",
		"sixtyone_medbags_MedicKit",
		"sixtyone_medbags_Trauma",
		"sixtyone_naloxone",
		"sixtyone_medbags_FirstAid"
	};
	arsenalBackpacks[] = {};
};

class medic11b {
	name = "medic";
	description = "MEDIC!";
	traits[] = {
		{"Medic",true}
	};
	customVariables[] = {
		{"ace_medical_medicClass",2,true},
		{"TFAR_freq_sr",{"500","101","102","103","104","105","68","69"},true},
		{"diwako_dui_indicators_customIcon", "a3\ui_f\data\map\vehicleicons\iconmanmedic_ca.paa", true},
        {"sixone_teamcolor", "BLUE", true}
	};
	icon = "z\sixtyone\addons\media\images\Icons\iconmanmedic_blue.paa";

	defaultLoadout[] = {
            {"SPS_hk417_13_vfg_fde_f","","","sps_vortex_spitfire_gen2_x5_RMR_tan",{"20Rnd_762x51_Mag",20},{},""},
			{},
			{"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""},
			{"U_tweed_acu_summer_ocp_blench",{{"sixtyone_medbags_FirstAid",1},{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"16Rnd_9x21_Mag",2,17}}},
			{"V_tweed_msv_mk2_cell_45_1",{{"sixtyone_medbags_FirstAid",1},{"ACE_quikclot",11},{"SPS_20Rnd_762x51mm_M80A1_EPR",9,20},{"HandGrenade",2,1}}},{"B_simc_US_Molle_sturm_OCP_RTO",{{"ACE_quikclot",2},{"ACE_fieldDressing",15},{"ACE_morphine",6},{"kat_chestSeal",6},{"kat_aatKit",3},{"kat_ncdKit",3},{"kat_stethoscope",1},{"kat_larynx",6},{"ACE_epinephrine",6},{"kat_IV_16",8},{"kat_nitroglycerin",2},{"kat_phenylephrine",2},{"kat_atropine",2},{"kat_naloxone",2},{"ACE_salineIV_250",6},{"kat_Pulseoximeter",1},{"kat_pocketBVM",1},{"kat_AED",1},{"kat_MFAK",1},{"ACE_suture",6},{"ACE_splint",8},{"kat_amiodarone",2},{"ACE_elasticBandage",14},{"ACE_packingBandage",14},{"kat_clamp",2},{"kat_EACA",2},{"kat_etomidate",1},{"kat_IO_FAST",4},{"kat_fentanyl",2},{"KAT_Empty_bloodIV_250",2},{"KAT_Empty_bloodIV_500",2},{"kat_lorazepam",2},{"kat_lidocaine",2},{"kat_ketamine",2},{"kat_guedel",6},{"kat_flumazenil",2},{"kat_suction",1},{"kat_Painkiller",2,10},{"kat_Penthrox",4,10},{"kat_Carbonate",3,10},{"kat_oxygenTank_150",2,100},{"kat_Pervitin",2,8}}},
			"H_tweed_ihps_tasc_rail","",
			{"Binocular","","","",{"Laserbatteries",1},{},""},
			{"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
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
		"sixtyone_medbags_FirstAid",
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
		"sixtyone_defib_AED",
		"sixtyone_medbags_DrugKit",
		"sixtyone_medbags_Fluid",
		"sixtyone_medbags_MedicKit",
		"sixtyone_medbags_Trauma",
		"sixtyone_naloxone",
		"sixtyone_medbags_FirstAid"
	};
	arsenalBackpacks[] = {};
};