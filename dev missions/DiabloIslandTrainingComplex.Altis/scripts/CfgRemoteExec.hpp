#define F(NAME,TARGET) class NAME { \
	allowedTargets = TARGET; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2

class CfgRemoteExec {  
// List of script functions allowed to be sent from client via remoteExec
	class Functions {
		mode = 2;
		jip = 1;		
		
		F(YMF_fnc_assignPlayer,SERVER)
		F(YMF_fnc_updateGroups,CLIENT)
		class SpawnScript { allowedTargets = 0;jip = 1; };
		class enableSimulationGlobal { allowedTargets = 0;jip = 1; };
	};
	class Commands {
		mode = 1;
		jip = 0;

		F(hint,CLIENT)
		F(selectLeader,CLIENT)
	};
};