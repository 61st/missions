#define F(NAME,TARGET) class NAME { \
	allowedTargets = TARGET; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2

class CfgRemoteExec {
	class Functions {
		mode = 1;
		jip = 0;

		F(YMF_fnc_assignPlayer,SERVER)
		F(YMF_fnc_setupPlayer,CLIENT)
		F(YMF_fnc_updateGroups,CLIENT)
		F(tsp_fnc_shake,SERVER)
		F(tsp_fnc_melee_ai,CLIENT)
		F(tsp_fnc_hitpoint_damage,CLIENT)

	};

	class Commands {
		mode = 1;
		jip = 0;

		F(hint,CLIENT)
		F(selectLeader,CLIENT)
	};
};
