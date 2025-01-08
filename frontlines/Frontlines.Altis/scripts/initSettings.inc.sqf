// Make settings name
private _YMFsettings = "61st - Mission Settings";

[ // Mission Type
    QEGVAR(Settings,setMissionType),
    "LIST",
    ["Mission Type", "This will deside on what kind of startup hint you get on mission start."],
    [_YMFsettings, "Mission"],
    [[0,1,2,3], ["Custom", "Operation", "Training", "Public"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Ai setting
    QEGVAR(Settings,setAiSystemDifficulty),
    "LIST",
    ["AI Setting", "This adjustes the ai and make them less godlike and more arcade to play against."],
    [_YMFsettings, "Mission"],
    [[0,1,2], ["Arma Default", "Adjusted", "Faction Based"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Radios
[ // Enable
    QEGVAR(Settings,enableRadios),
    "CHECKBOX",
    ["Enable","Allow mission to set up and handle radio distributution"],
    [_YMFsettings, "Radios"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
// [ // Long Range Radio Channels
//     QEGVAR(Settings,LRsetRadioChannelNames),
//     "EDITBOX",
//     ["Long Range Radio Channels (ACRE)","Array of radio channels used for ACRE the index of the array translate to channel."],
//     [_YMFsettings, "Radios"],
//     '["COMMAND","OUTLAW","THUNDER","PHOENIX","RHINO","TRAINING","FIRES","CAS-1","CAS-2","AIR-1","AIR-2","GROUND-TO-AIR","CONVOY","AUX-1","AUX-2","ZEUS"]',
//     true,
//     {},
//     true
// ] call CBA_fnc_addSetting;
// [ // Platoon Radio Channels
//     QEGVAR(Settings,MRsetRadioChannelNames),
//     "EDITBOX",
//     ["Mid Range Radio Channels (ACRE)","Array of radio channels used for ACRE the index of the array translate to channel."],
//     [_YMFsettings, "Radios"],
//     '["OUTLAW-HQ","OUTLAW-1/1","OUTLAW-1/2","OUTLAW-1/3","MED-NET","ENG-NET","WHYAREUHERE"]',
//     true,
//     {},
//     true
// ] call CBA_fnc_addSetting;

[ // Squad Radio Channels
    QEGVAR(Settings,setRadio),
    "CHECKBOX",
    ["Squad Radio Channels (ACRE)","Allow radio channels to be changed based on player squadname."],
    [_YMFsettings, "Radios"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

[ // Documents
    QEGVAR(Settings,showDiaryRecords),
    "CHECKBOX",
    ["Documents","Allow the mission to write diary help documents."],
    [_YMFsettings, "Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Rank
    QEGVAR(Settings,setPlayerRank),
    "CHECKBOX",
    ["Rank","Allow mission to apply arma rank based on name rank prefixes."],
    [_YMFsettings, "Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

[ // Insignia
    QEGVAR(Settings,allowInsigniaApplication),
    "CHECKBOX",
    ["Insignia","Automaticly apply insignias based on squad name."],
    [_YMFsettings, "Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Apply Earplugs
    QEGVAR(Settings,addEarplugs),
    "CHECKBOX",
    ["Apply Earplugs","Automaticly apply earplugs to players on spawn and respawn."],
    [_YMFsettings, "Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;


// [ // Enable
//     QEGVAR(Settings,enableStagingSystem),
//     "CHECKBOX",
//     ["Enable","Enables the staging system."],
//     [_YMFsettings, "Staging"],
//     true,
//     true,
//     {},
//     false
// ] call CBA_fnc_addSetting;
[ // Enable
    QEGVAR(Settings,enableVehicleSystem),
    "CHECKBOX",
    ["Enable", "Enables scripted settings and functions to apply to vehicles."],
    [_YMFsettings, "Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Pylon
    QEGVAR(Settings,enableVehiclePylon),
    "CHECKBOX",
    ["Pylon", "Enables scripted loadouts or pylon to be applied to vehicles based on faction"],
    [_YMFsettings, "Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Loadouts
    QEGVAR(Settings,enableVehicleInventory),
    "CHECKBOX",
    ["Inventory", "Enables scripted inventory to be applied to vehicles based on faction"],
    [_YMFsettings, "Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Radio
    QEGVAR(Settings,enableVehicleRadios),
    "CHECKBOX",
    ["Radio", "Enables vehicles radio to be enabled and set on vehicles"],
    [_YMFsettings, "Vehicle"],
    false,
    true,
    {},
    true
] call CBA_fnc_addSetting;

[ // Factions
    QEGVAR(Settings,vehicleFactions),
    "EDITBOX",
    ["Factions","Array of factions allowing system loadout and pylon changes"],
    [_YMFsettings, "Vehicle"],
    '["BLU_W_F","BLU_T_F","BLU_NATO_lxWS","BLU_F","rhs_faction_usaf", "rhs_faction_usarmy", "rhs_faction_usarmy_d", "rhs_faction_usarmy_wd", "rhs_faction_usmc", "rhs_faction_usmc_d", "rhs_faction_usmc_wd", "rhs_faction_usn","rhs_faction_socom","USAF","tweed_UA_21","lxim"]',
    true,
    {},
    true
] call CBA_fnc_addSetting;


// 6; Item Replacement system
[ // Enable
    QEGVAR(Settings,allowReplaceItem),
    "CHECKBOX",
    ["Enable","Allow objects to be replaced with streamlined gear for consistency."],
    [_YMFsettings, "Item Replacement"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Medical Items
    QEGVAR(Settings,replaceMedical),
    "LIST",
    ["Medical Items","Allow medical items to be replaced with our custom ones.\nNote: this system will not be disabled if the ace medical convert items is enabled."],
    [_YMFsettings, "Item Replacement"],
    [[0,1], ["Disabled", "Convert medical equipment"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Magazines
    QEGVAR(Settings,replaceMagazines),
    "LIST",
    ["Magazines","Force specific usage of sertain objects"],
    [_YMFsettings, "Item Replacement"],
    [[0,1,2], ["Disabled", "Use RHS then ACE magazines", "Use ACE then RHS magazines"], 0],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // M67 Fragmentation Grenade
    QEGVAR(Settings,replacerhs_mag_m67s),
    "LIST",
    ["M67 Fragmentation Grenade","Force specific usage of sertain objects"],
    [_YMFsettings, "Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE M67", "Use RHS M67"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // M84 Stun Grenade
    QEGVAR(Settings,replaceStunGrenades),
    "LIST",
    ["M84 Stun Grenade","Force specific usage of sertain objects"],
    [_YMFsettings, "Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE M84", "Use RHS M84"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Smoke Grenade
    QEGVAR(Settings,replaceSmokeGrenades),
    "LIST",
    ["Smoke Grenade","Force specific usage of sertain objects"],
    [_YMFsettings, "Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE Smokes", "Use RHS Smokes"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;


// 7; Combat Jump Simulation
[ // Simulation Type
    QEGVAR(Settings,jumpSimulation),
    "LIST",
    ["Simulation Type","Combat jump simulation is a system that checks for lose equiped gear in the form of;\nnight vision googles, hats or glasses and make you lose the on a combat jump.\n    None: No simulation is done.\n    Basic: Lose gear unassigned.\n    Advanced: Lose gear is removed."],
    [_YMFsettings, "Combat Jump Simulation"],
    [[0,1,2], ["None", "Basic", "Advanced"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Include Night Vision Googles
    QEGVAR(Settings,jumpSimulationNVG),
    "CHECKBOX",
    ["Include Night Vision Googles","Include equiped Night Vison Googles in the simulation."],
    [_YMFsettings, "Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Include Non-combat Googles
    QEGVAR(Settings,jumpSimulationGlasses),
    "CHECKBOX",
    ["Include Non-combat Googles","Include Non-combat Googles in the simulation. This refere to sunshades and simular non-safety googles."],
    [_YMFsettings, "Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Include Non-combat Headgear
    QEGVAR(Settings,jumpSimulationHat),
    "CHECKBOX",
    ["Include Non-combat Headgear","Include Non-combat Headgear in the simulation. This refere to hats bandanas and baretes."],
    [_YMFsettings, "Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

[
	"YMF_preserveBuildData",
	"CHECKBOX",
	["Preserve build data","Saves height, direction and terrain alignment when building."],
	["Frontlines","Building"]
] call CBA_fnc_addSetting;
YMF_buildElevation = 0;
YMF_buildRotation = 0;
YMF_alignToTerrain = true;

[
	"YMF_buildRotationIncrement",
	"SLIDER",
	["Build rotation increment","Select your desired rotation increment."],
	["Frontlines","Building"],
	[1,90,45,0]
] call CBA_fnc_addSetting;

[
	"YMF_buildHeightIncrement",
	"SLIDER",
	["Build height increment","Select your desired height increment when moving an object up or down."],
	["Frontlines","Building"],
	[0.01,1,0.2,2]
] call CBA_fnc_addSetting;

[
	"YMF_postBuildAction",
	"LIST",
	["Post build action","Choose what action should happen after a build occurs, repeat will not work with any vehicles."],
	["Frontlines","Building"],
	[[0,1,2],["None","Repeat Build","Re-open Menu"]]
] call CBA_fnc_addSetting;

[
	"YMF_uiUpdateInterval",
	"SLIDER",
	["UI Update Interval","Choose the time interval between UI updates, the longer the interval the slower the update which may help performance for lower end systems."],
	["Frontlines","User Interface"],
	[0,10,0.5,2],
	nil,
	{
		if !(isNil "YMF_uiHandle") then {
			[YMF_uiHandle] call CBA_fnc_removePerFrameHandler;

			private _markerVar = "";
			private _sector = [player,["town","city","factory","military","tower"]] call YMF_fnc_getNearestSector;
			private _radius = (getArray(missionConfigFile >> "Settings" >> "sectorRadius")) select ([_sector getVariable "YMF_sectorType"] call YMF_fnc_getSectorTypeIndex);
			if (player distance2D _sector < _radius) then {
				_markerVar = format ["%1Marker",_sector getVariable "YMF_sectorVariable"];
			};
			YMF_uiHandle = [YMF_fnc_updateUI,YMF_uiUpdateInterval,[true,_markerVar]] call CBA_fnc_addPerFrameHandler;
		};
	}
] call CBA_fnc_addSetting;

[
	"YMF_mapUpdateInterval",
	"SLIDER",
	["Map Update Interval","Choose the time interval between blufor map marker updates."],
	["Frontlines","Map"],
	[0,5,0,2]
] call CBA_fnc_addSetting;

[
	"YMF_showIntro",
	"CHECKBOX",
	["Show intro screen","Shows the welcome screen, deselect to load straight in."],
	["Frontlines","User Interface"],
	true
] call CBA_fnc_addSetting;

[
	"YMF_showCaptureBar",
	"CHECKBOX",
	["Show capture bar","Shows the capture bar when inside an objectives radius."],
	["Frontlines","User Interface"],
	true,
	nil,
	{
		if !(YMF_showCaptureBar) then {
			private _hud = uiNamespace getVariable ["YMF_HUD",displayNull];
			private _control = _hud displayCtrl 1000;
			if (ctrlShown _control) then {
				_control ctrlShow false;
				(_hud displayCtrl 1900) ctrlShow false;
				(_hud displayCtrl 1901) ctrlShow false;
			};
		};
	}
] call CBA_fnc_addSetting;

[
	"YMF_autoSaveLoadout",
	"CHECKBOX",
	["Automatically save loadout","Automatically saves your loadout when the arsenal is closed."],
	["Frontlines","Arsenal"],
	true
] call CBA_fnc_addSetting;

[
	"YMF_weightWarningThreshold",
	"SLIDER",
	["Weight Warning Threshold","Select the weight threshold which triggers the heavy weight warning message when leaving the arsenal."],
	["Frontlines","Arsenal"],
	[30,50,40,1]
] call CBA_fnc_addSetting;