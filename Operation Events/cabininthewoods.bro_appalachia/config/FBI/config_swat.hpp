class swatrifle {
    name = "Swat Rifleman";
    description = "GET ON THE GROUND!! STOP RESISTING!!";
    traits[] = {
        {"Engineer",true},
        {"explosiveSpecialist",true}
    }; 
    customVariables[] = {
        {"ace_medical_medicClass",0,true},
        {"ace_isEngineer",2,true},
        {"YMF_iscom", true, true}
    };
    icon = "a3\ui_f\data\map\vehicleicons\iconmanengineer_ca.paa";

    defaultLoadout[] = {
            {"FBI_HrtRifle","rhsusf_acc_SF3P556","JCA_acc_DualMount_black_Pointer","JCA_optic_ARS_black",{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",30},{},""},{},
            {"FBI_Pistol","","JCA_acc_LightModule_Pistol_black","",{"JCA_17Rnd_9x19_P320_Mag",17},{},""},
            {"fedUniHRT",{{"ACE_DefusalKit",1},{"ACE_Flashlight_MX991",1},{"ACE_Clacker",1},{"lxim_medbags_FirstAid",1}}},
            {"lockeFeds_V_CarrierRigKBT_01_combat_Olive_F",{{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",12,30},{"JCA_17Rnd_9x19_P320_Mag",4,17},{"tsp_flashbang_cts",1,1},{"ACE_CTS9",2,1}}},
            {"FBI_hrt_assaultpack",{{"ItemcTabHCam",1},{"ACE_IR_Strobe_Item",1},{"ACE_SpraypaintBlue",1},{"ACE_CableTie",6},{"ACE_wirecutter",1},{"ACE_EntrenchingTool",1},{"JCA_30Rnd_556x45_Green_PMAG",2,30},{"Chemlight_blue",5,1},{"cigs_lighter",1,100},{"cigs_morley_cigpack",1,20},{"tsp_breach_popper_auto_mag",4,1},{"rhssaf_mag_brd_m83_white",2,1}}},
            "Aegis_H_Helmet_FASTMT_Headset_rgr_F","JCA_G_balaclava_01_black_F",{"lxim_equipment_Vector_Designator","","","",{"Laserbatteries",1},{},""},
            {"ItemMap","ItemAndroid","TFAR_anprc152","ItemCompass","ItemWatch","A3_GPNVG18b_BLK_F"}
    };
    
    arsenalitems[] = {
        "Rev_Demine",
        "Rev_Roller",
        "ACE_M26_Clacker",
        "B_UavTerminal",
        "ACE_Clacker",
        "FBI_HrtRifle",
        "JCA_optic_ARS_black",
        "JCA_acc_DualMount_black_Pointer",
        "rhsusf_acc_SF3P556",
        "ACE_DefusalKit",
        "ToolKit",
        "lxim_breaching_BreachingCharge_Mag",
        "ACE_VMH3",
        "ACE_VMM3",
        "DemoCharge_Remote_Mag",
        "ATMine_Range_Mag",
        "SatchelCharge_Remote_Mag",
        "ClaymoreDirectionalMine_Remote_Mag",
        "SLAMDirectionalMine_Wire_Mag",
        "ACE_Fortify",
        "tsp_breach_package_mag",
        "tsp_breach_popper_auto_mag",
        "tsp_breach_popper_mag",
        "tsp_breach_linear_auto_mag",
        "tsp_breach_linear_mag",
        "tsp_breach_block_auto_mag",
        "tsp_breach_block_mag",
        "rhs_weap_M590_8RD",
        "rhs_weap_M590_5RD",
        "Rev_Demine",
        "Rev_UAV_IED",
        "Rev_Roller",
        "iedd_item_notebook",
        "lockeFeds_h_cap_blk",
        "lockeFeds_h_cap_blu2",
        "lockeFeds_h_cap_blu1",
        "lockeFeds_h_Cap_headphones_hrt",
        "fedUniHRT",
        "fedWindbreakerWht",
        "fedWindbreakerERT",
        "fedWindbreakerJTTF",
        "fedWindbreaker",
        "lockeFeds_V_CarrierRigKBT_01_Blk_F",
        "lockeFeds_V_CarrierRigKBT_01_Blu_F",
        "lockeFeds_V_CarrierRigKBT_01_Blu2_F",
        "lockeFeds_V_CarrierRigKBT_01_Olive_F",
        "lockeFeds_v_CarrierRigKBT_01_tactical_Olive_F",
        "lockeFeds_V_CarrierRigKBT_01_heavy_Olive_F",
        "lockeFeds_V_CarrierRigKBT_01_combat_Olive_F",
        "lockeFeds_V_CarrierRigKBT_01_Security_Blk_F",
        "lockeFeds_VCarrierRigKBT_01_light_Olive_F",
        "lockeFeds_V_CarrierRigKBT_01_Security_Blu_F",
        "lockeFeds_V_CarrierRigKBT_01_Security_Blu2_F",
        "fedBagHRT",
        "JCA_25Rnd_45ACP_UMP_Mag",
        "JCA_smg_UMP_black_F",
        "JCA_smg_MP5_FL_black_F",
        "JCA_smg_MP5_AFG_black_F",
        "JCA_arifle_M4A4_AFG_black_F",
        "JCA_30Rnd_9x19_MP5_Mag",
        "rhs_mag_30Rnd_556x45_M855_PMAG"
    };
};