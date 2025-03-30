class Dynamic_Groups { //format: {"Group Name",{"Roles"},"Conditions for the group to be shown"}
    faction_name = "61st";
    group_setup[] = {
        {"Valiant 1-1",{"squadlead11","jtac11","engineer11","medic11","teamlead11","dismount11","dismount11","dismount11","dismount11","dismount11"},"true"},
        {"Valiant 1-2",{"squadlead12","jtac12","medic12","teamlead12","dismount12","dismount12","dismount12","dismount12","dismount12","dismount12"},"true"},
        {"PHOENIX-3/6",{"pilot","pilot","fac"},"true"},
        {"Phoenix 1-1",{"pilot","pilot","crewchief","crewchief","medicp"},"true"},
        {"Phoenix 1-2",{"pilot","pilot","crewchief","crewchief","medicp"},"count playableUnits > 6"},
        {"Ground Branch",{"Officer","Officer","Officer","Officer","Officer","Officer","Officer","Officer","Officer","Officer"},"true"},
        {"Range Control",{"Zeus","Zeus"},"true"},
        {"Cebu Police",{"squadleadcp","mediccp","teamleadcp","dismountcp","dismountcp","dismountcp","dismountcp","dismountcp","dismountcp","dismountcp","dismountcp","dismountcp","dismountcp","dismountcp","dismountcp"},"true"},
        {"Cebu SF",{"squadleadsf","medicsf","teamleadsf","dismountsf","dismountsf","dismountsf","dismountsf","dismountsf","dismountsf","dismountsf","dismountsf","dismountsf","dismountsf","dismountsf","dismountsf"},"true"},
        {"Philippine SF",{"squadleadpsf","medicpsf","teamleadpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf","dismountpsf"},"true"}
    };
};

#include "config_roles.hpp"
#include "config_arsenal.hpp"
