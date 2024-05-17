class gunner11 {
	name = "Crew Gunner";
    description = "The Driver is responsible for driving the squads APC.";
    traits[] = {
		{"Engineer",true}
	};
	customVariables[] = {
		{"ace_isEngineer",1,true},
        {"TFAR_freq_sr",{"500","101","102","103","104","105","68","69"},true}
	};
    icon = "a3\ui_f\data\map\vehicleicons\iconmanat_ca.paa";

    defaultLoadout[] = {
            {"SPS_hk337_t_fde_f","","","NGA_XM157",{"SPS_HKG3PMAG_30Rnd_300BLK_147_B",30},{},""}, 
            {}, 
            {"sps_hk_vp9_stnd_black","","","",{"16Rnd_9x21_Mag",17},{},""}, 
            {"U_tweed_acu_summer_ocp_blench",{{"kat_IFAK",1},{"ACE_IR_Strobe_Item",1},{"ItemcTabHCam",1},{"ACE_CableTie",4},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"kat_Painkiller",1,10},{"16Rnd_9x21_Mag",2,17}}},
            {"V_tweed_msv_mk2_e_1",{{"SPS_HKG3PMAG_30Rnd_300BLK_110_B",2,30}}}, 
            {},"H_HelmetCrew_B","G_tweed_ESS_Green",
            {"Binocular","","","",{},{},""}, 
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","psq42_blk_icup"}
    };
    arsenalWeapons[] = {};
    arsenalMagazines[] = {};
    arsenalItems[] = {
        "ToolKit",
        "ACE_wirecutter",
        "H_HelmetCrew_B",
        "rhsusf_cvc_ess",
        "rhsusf_cvc_alt_helmet",
        "rhsusf_cvc_helmet",
        "rhsusf_cvc_green_ess",
        "rhsusf_cvc_green_alt_helmet",
        "rhsusf_cvc_green_helmet"
    };
    arsenalBackpacks[] = {};
};