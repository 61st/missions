/*
    Author: JohnnyShootos (Edited by TheTimidShade)

    Description:
        Serverside call to create zeus module using passed player

    Parameters:
        0: OBJECT - Player to assign curator module to
        
    Returns:
        NONE
*/

params ["_player"];

if (isNull admp_admin_zeusLogicGroup) then { // if the logic group doesn't exist, create a new one
    admp_admin_zeusLogicGroup = createGroup sideLogic;
    publicVariable "admp_admin_zeusLogicGroup";
};

// create module and assign player
private _curatorModule = admp_admin_zeusLogicGroup createUnit ["ModuleCurator_F", [0, 90, 90], [], 0.5, "NONE"];
_player assignCurator _curatorModule;
_player setVariable ['curatorModule', _curatorModule];

// Set up Zeus variables
_curatorModule setVariable ["owner", str (owner _player), true];
_curatorModule setVariable ["curatorUnitOwner", str (owner _player)];
_curatorModule addEventHandler ["curatorObjectDoubleClicked",{(_this select 1) call bis_fnc_showCuratorAttributes;}];
_curatorModule addEventHandler ["curatorGroupDoubleClicked",{(_this select 1) call bis_fnc_showCuratorAttributes;}];
_curatorModule addEventHandler ["curatorWaypointDoubleClicked",{(_this select 1) call bis_fnc_showCuratorAttributes;}];
_curatorModule addEventHandler ["curatorMarkerDoubleClicked",{(_this select 1) call bis_fnc_showCuratorAttributes;}];
_curatorModule addEventHandler ["curatorFeedbackMessage",{_this call bis_fnc_showCuratorFeedbackMessage;}];
_curatorModule addEventHandler ["curatorPinged",{_this call bis_fnc_curatorPinged;}];
_curatorModule addEventHandler ["curatorObjectPlaced",{_this call bis_fnc_curatorObjectPlaced;}];
_curatorModule addEventHandler ["curatorObjectEdited",{_this call bis_fnc_curatorObjectEdited;}];
_curatorModule addEventHandler ["curatorWaypointPlaced",{_this call bis_fnc_curatorWaypointPlaced;}];

[_player, _curatorModule] call admp_fnc_updateCuratorEditableObjects // start updating editable objects