class CfgNotifications {
	class defaultNotif {
		title = "";
		iconPicture = "";
		iconText = "";
		description = "";
		color[] = {1,1,1,1};
		duration = 10;
		priority = 9;
	};

	class newNotif: defaultNotif {
		title = "%1";
		description = "%2";
		color[] = {1,1,1,1};
	};

	class successNotif: newNotif {
		color[] = {0,1,0,1};
		iconPicture = "\a3\ui_f\data\GUI\Cfg\CommunicationMenu\defend_ca.paa";
	};

	class failedNotif: newNotif {
		color[] = {1,0,0,1};
		iconPicture = "\a3\ui_f\data\GUI\Cfg\CommunicationMenu\attack_ca.paa";
	};

	class generalNotif: newNotif {
		color[] = {0,0.627,1,1};
		iconPicture = "\a3\ui_f\data\GUI\Cfg\CommunicationMenu\instructor_ca.paa";
	};
};