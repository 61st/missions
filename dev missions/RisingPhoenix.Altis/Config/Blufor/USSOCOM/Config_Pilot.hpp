/*
	Faction: Pilot
	Author: SiegeSix
*/
class pilot {
	name = $STR_B_PILOT_F0;
	rank = "Lieutenant";
	description = $STR_DT_Pilot_Description;
	traits[] = {

	};
	customVariables[] = {
		{"ace_isEngineer",1,true},
		{"ACE_GForceCoef",0.55,false}
	};
	icon = "a3\ui_f\data\map\vehicleicons\iconManOfficer_ca.paa";

	defaultLoadout[] = {
		{"rhs_weap_mk18_KAC","rhsusf_acc_rotex5_grey","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",{"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",30},{},"rhsusf_acc_tacsac_blk"},{},{},{"rhs_uniform_g3_mc",{{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_packingBandage",5},{"ACE_quikclot",5},{"ACE_CableTie",5},{"ACE_EarPlugs",1},{"ACE_epinephrine",2},{"ACE_IR_Strobe_Item",3},{"ACE_Flashlight_XL50",1},{"ACE_morphine",2},{"ACE_splint",1},{"ACE_tourniquet",2}}},{"rhsusf_spcs_ocp_rifleman_alt",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",10,30},{"rhs_mag_m67",2,1},{"SmokeShell",2,1},{"ACE_M14",1,1}}},{},"rhsusf_opscore_mc_cover_pelt_nsw","G_Bandanna_beast",{"ACE_Vector","","","",{},{},""},{"ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ItemWatch","ACE_NVG_Wide"}

	};

	arsenalItems[] = {
		"rhsusf_hgu56p_visor_mask_mo",
		"rhsusf_hgu56p_visor_mask_skull",
		"rhsusf_hgu56p_visor",
		"rhsusf_ihadss"
	};
};