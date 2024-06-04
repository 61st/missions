SIXONE_arsenalBoxes = [arsenal_1,arsenal_2];

class Dynamic_Groups { //format: {"Group Name",{"Roles"},"Conditions for the group to be shown"}
	faction_name = "ixones";
	group_setup[] = {
		{"Outlaw HQ",{"officerpl","ncoplsgt","jfire","engineer","medic"},"true"},
		{"Outlaw 1-1",{"squadlead11","jfire11","teamlead11r","medic11r","dismount11r","dismount11r","dismount11r","teamlead11b","medic11b","dismount11b","dismount11b","dismount11b","commander11","driver11","gunner11"},"true"},
		{"Outlaw 1-2",{"squadlead12","jfire12","teamlead12r","medic12r","dismount12r","dismount12r","dismount12r","teamlead12b","medic12b","dismount12b","dismount12b","dismount12b","commander12","driver12","gunner12"},"true"},
		{"Rhino",{"squadleadr","engineerr","engineerr","engineerr","engineerr"},"true"},
		{"Phoenix 1-1",{"pilot","pilot","crewchief","crewchief","medicp"},"true"},
		{"Phoenix 1-2",{"pilot","pilot","crewchief","crewchief","medicp"},"true"}
	};
};

#include "Config_Roles.hpp"