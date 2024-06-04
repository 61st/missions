// Make settings name
private _Sixoneettings = "Sixone Mission Settings";


 /* Ai setting ------------------------------------------------------------------------------------------------------- */
[ 
    QEGVAR(Settings,setAiSystemDifficulty),
    "LIST",
    ["AI Setting", "This adjustes the ai and make them less godlike and more arcade to play against."],
    [_Sixoneettings, "Mission"],
    [[0,1,2], ["Arma Default", "Adjusted", "Faction Based"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ 
    QEGVAR(Settings,AllowAILoadouts),
    "CHECKBOX",
    ["AI Loadouts (Experimental)", "Allow gear system to apply loadouts to AI units as well as player."],
    [_Sixoneettings, "Mission"],
    false,
    true,
    {},
    true
] call CBA_fnc_addSetting;

/* Vehicle ---------------------------------------------------------------------------------------------------------- */
[ // Enable
    QEGVAR(Settings,enableVehicleSystem),
    "CHECKBOX",
    ["Enable", "Enables scripted settings and functions to apply to vehicles."],
    [_Sixoneettings, "Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Loadouts
    QEGVAR(Settings,enableVehicleInventory),
    "CHECKBOX",
    ["Inventory", "Enables scripted inventory to be applied to vehicles based on faction"],
    [_Sixoneettings, "5; Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
/* Item Replacement system ------------------------------------------------------------------------------------------ */
[ // Enable
    QEGVAR(Settings,allowReplaceItem),
    "CHECKBOX",
    ["Enable","Allow objects to be replaced with streamlined gear for consistency."],
    [_Sixoneettings, "Item Replacement"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Medical Items
    QEGVAR(Settings,replaceMedical),
    "LIST",
    ["Medical Items","Allow medical items to be replaced with our custom ones.\nNote: this system will not be disabled if the ace medical convert items is enabled."],
    [_Sixoneettings, "Item Replacement"],
    [[0,1], ["Disabled", "Convert medical equipment"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Staging
[ // Enable
    QEGVAR(Settings,enableStagingSystem),
    "CHECKBOX",
    ["Enable","Enables the staging system."],
    [_Sixoneettings, "Staging"],
    true,
    true,
    {},
    false
] call CBA_fnc_addSetting;

[ // Factions
    QEGVAR(Settings,vehicleFactions),
    "EDITBOX",
    ["Factions","Array of factions allowing system loadout and pylon changes"],
    [_Sixoneettings, "Vehicle"],
    '["BLU_W_F","BLU_T_F","BLU_NATO_lxWS","BLU_F"]',
    true,
    {},
    true
] call CBA_fnc_addSetting;

/* ranks ------------------------------------------------------------------------------------------------------------ */
private _Missionranks = "Mission Ranks";
private _rank_hint = "list of steam user ID's";
[
    QEGVAR(Settings,ranks_corporal), 
    "EDITBOX",
    ["Corporal", _rank_hint], 
    _Missionranks,
    [], 
    1 
] call CBA_fnc_addSetting;

[
    QEGVAR(Settings,ranks_sergeant), 
    "EDITBOX",
    ["Sergeant", _rank_hint], 
    _Missionranks,
    [], 
    1 
] call CBA_fnc_addSetting;

[
    QEGVAR(Settings,ranks_lieutenant), 
    "EDITBOX",
    ["Lieutenant", _rank_hint], 
    _Missionranks,
    [], 
    1 
] call CBA_fnc_addSetting;

[
    QEGVAR(Settings,ranks_captain),
    "EDITBOX",
    ["Captain", _rank_hint],
    _Missionranks,
    [], 
    1 
] call CBA_fnc_addSetting;

[
    QEGVAR(Settings,ranks_major),
    "EDITBOX",
    ["Major", _rank_hint], 
    _Missionranks,
    [], 
    1 
] call CBA_fnc_addSetting;

[
    QEGVAR(Settings,ranks_colonel),
    "EDITBOX",
    ["Colonel", _rank_hint], 
    _Missionranks,
    [], 
    1 
] call CBA_fnc_addSetting;
