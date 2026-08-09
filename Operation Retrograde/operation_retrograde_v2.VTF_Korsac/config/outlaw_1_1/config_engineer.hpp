class engineer11 {
name = "Combat Engineer";
description = "Makes things go boom or not to go boom";
traits[] = {
    {"Engineer",true},
    {"explosiveSpecialist",true}
}; 
customVariables[] = {
    {"ace_isEngineer",2,true},
    {"ace_medical_medicClass",0,true}
};
icon = "a3\ui_f\data\map\vehicleicons\iconmanengineer_ca.paa";

defaultLoadout[] = {
        {"rhs_weap_m4a1","","rhsusf_acc_anpeq15A","lxim_equipment_optic_DMS",{"30Rnd_556x45_Stanag",30},{},""},{"rhs_weap_m72a7","","","",{},{},""},
        {"rhsusf_weap_glock17g4","","MHS_X300U","",{"rhsusf_mag_17Rnd_9x19_FMJ",17},{},""},
        {"rhsgref_uniform_olive",{{"FirstAidKit",1},{"lxim_medbags_FirstAid",1}}},
        {"V_CarrierRigKBT_01_light_EAF_F",{{"rhsusf_mag_17Rnd_9x19_FMJ",4,17},{"ACE_30Rnd_556x45_Stanag_M995_AP_mag",12,30}}},
        {"B_simc_US_Molle_sturm_OCP",{{"psq42_blk",1},{"ACM_ChestSeal",2},{"lxim_medbags_FirstAid",2},{"ACM_SAMSplint",2},{"ACE_EntrenchingTool",1},{"ACE_Fortify",1},{"JCA_G_AirPurifyingRespirator_03_black_clear_F",1},{"ACE_IR_Strobe_Item",1},{"ACE_SpraypaintBlue",1},{"ACE_HuntIR_monitor",1}}},
        "H_tweed_ech_casque_base","",{"Binocular","","","",{},{},""},
        {"ItemMap","ItemAndroid","TFAR_anprc152_1","ItemCompass","ACE_Altimeter",""}
};

arsenalitems[] = {
    "Rev_Demine",
    "Rev_Roller",
    "ACE_M26_Clacker",
    "B_UavTerminal",
    "ACE_Clacker",
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
    "iedd_item_notebook"
};
};