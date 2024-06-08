YMF_arsenalBoxes = [arsenal_1,arsenal_2];

class Dynamic_Groups { //format: {"Group Name",{"Roles"},"Conditions for the group to be shown"}
	faction_name = "61st";
	group_setup[] = {
		// {"Outlaw HQ",{"officerpl","ncoplsgt","jfire","engineer","medic","mark"},"true"},
		{"Outlaw 1",{"officerpl","driver1","gunner1"},"true"},
		{"Outlaw 2",{"ncoplsgt","driver2","gunner2"},"true"},
		// {"Outlaw 3",{"ncoplsgt","driver3","gunner3"},"true"},
		// {"Outlaw 4",{"commander4","driver4","gunner4"},"true"},
		{"Outlaw 1-1",{"squadlead11","jfire11","engineer11","teamlead11r","medic11r","dismount11r","dismount11r","dismount11r","teamlead11b","medic11b","dismount11b","dismount11b","dismount11b"},"true"},
		// {"Outlaw 1-2",{"squadlead12","jfire12","engineer12","teamlead12r","medic12r","dismount12r","dismount12r","dismount12r","teamlead12b","medic12b","dismount12b","dismount12b","dismount12b"},"true"},
		// {"Rhino",{"squadleadr","engineer","engineer","engineer","engineer"},"count playableUnits > 12"},
		{"Phoenix 1-1",{"pilot","pilot","crewchief","crewchief","medicp"},"true"},
		{"Phoenix 1-2",{"pilot","pilot","crewchief","crewchief","medicp"},"count playableUnits > 12"},
		{"Recruits",{"Recruit","Recruit","Recruit","Recruit","Recruit","Recruit","Recruit","Recruit","Recruit","Recruit"},"true"},
		{"Students",{"jfires","jfires","jfires","jfires","engineers","engineers","engineers","engineers","medics","medics","medics","medics"},"true"},
		{"Range Control",{"Zeus","Zeus","Cadre","Cadre","Cadre","Cadre"},"true"}
	};
};

#include "Config_Roles.hpp"