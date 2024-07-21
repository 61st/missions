 { //format: {"Group Name",{"Roles"},"Conditions for the group to be shown"}
	faction_name = "61st";
	group_setup[] = {
		{"Outlaw 1-1",{"squadlead11","jtac11","engineer11","medic11","teamlead11","dismount11","dismount11","dismount11","dismount11","dismount11"},"true"},
		{"Wardaddy 1-1",{"cmd1","driver1","gunner1"},"true"},
		{"Outlaw 1-2",{"squadlead12","jtac12","medic12","teamlead12","dismount12","dismount12","dismount12","dismount12","dismount12","dismount12"},"true"},
		{"TBN 1-2 ",{"cmd2","driver2","gunner2"},"true"},
		{"Outlaw HQ",{"co","xo","jtac","medic","engineer","mark"},"true"},
		// {"Rhino",{"squadleadr","engineer","engineer","engineer","engineer"},"true"},
		{"Phoenix",{"pilot","pilot","fac"},"true"},
		{"Phoenix 1-1",{"pilot","pilot","crewchief","crewchief","medicp"},"true"},
		{"Phoenix 1-2",{"pilot","pilot","crewchief","crewchief","medicp"},"count playableUnits > 6"},
		{"Recruits",{"Recruit","Recruit","Recruit","Recruit","Recruit","Recruit","Recruit","Recruit","Recruit","Recruit"},"true"},
		{"Students",{"jtacs","jtacs","jtacs","jtacs","engineers","engineers","engineers","engineers","medics","medics","medics","medics"},"true"},
		{"Range Control",{"Zeus","Zeus","Cadre","Cadre","Cadre","Cadre"},"true"}
	};
};

#include "config_roles.hpp"
#include "config_arsenal.hpp"