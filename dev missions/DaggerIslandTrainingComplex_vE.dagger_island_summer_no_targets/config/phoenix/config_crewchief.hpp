class crewchief {
    name = "Crew Chief";
    description = "Weeeeeeeeeeeee";
    traits[] = {
    {"Engineer",true}
    };
    customVariables[] = {
      {"ace_isEngineer",2,true},
      {"YMF_152", true, true},
      {"starting_152_channel", 21, true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconman_ca.paa";

    defaultLoadout[] = {
          {"lxim_sig_XM7","KAR_XM250_SUP","rhsusf_acc_anpeq15","lxim_equipment_optic_DMS",{"lxim_sig_25Rnd_Fury",25},{},""},{},
            {"MHS_M17","","","",{"MHS_21rnd_9MM_124FMJ_M17",21},{},""},
            {"U_tweed_acu_summer_ocp",{{"ACE_EarPlugs",1},{"ACE_MapTools",1},{"ACE_fieldDressing",4},{"ACE_tourniquet",4},{"ACRE_PRC343",1},{"ACRE_PRC152",1},{"",1,0}}},
            {"V_tweed_msv_mk2_1",{{"ACE_CableTie",4},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"MHS_21rnd_9MM_124FMJ_M17",3,21},{"SmokeShell",2,1},{"HandGrenade",2,1},{"lxim_sig_25Rnd_Fury",12,25}}},
            {"B_simc_US_Molle_sturm_OCP_RTO_wasser",{{"ACE_EntrenchingTool",1},{"ACE_Flashlight_MX991",1},{"ACE_IR_Strobe_Item",1},{"ACE_wirecutter",1},{"ACE_Fortify",1},{"ACE_EarPlugs",2},{"ACE_CableTie",5},{"psq42_blk",1}}},
            "H_tweed_ihps_g_tasc_rail","G_oak_2_cut",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter",""}
    };
    arsenalitems[] = {
      "CUP_arifle_M4A1_standard_short_black",
      "H_PilotHelmetHeli_B",
      "H_CrewHelmetHeli_B",
      "FIR_HGU56P_Skull_Death",
      "FIR_HGU56P_Skull",
      "H_PilotHelmetHeli_I_E",
      "H_CrewHelmetHeli_I_E",
      "CUP_NVG_GPNVG_black_WP",
      "CUP_NVG_GPNVG_black",
      "ACE_NVG_Wide_Black",
      "ACE_NVG_Wide_Black_WP",
      "CUP_30Rnd_556x45_PMAG_BLACK_PULL",
      "CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red",
      "B_simc_US_Molle_sturm_OCP_RTO",
      "B_simc_US_Molle_sturm_OCP_RTO_wasser",
      "U_B_HeliPilotCoveralls"
    };
};
