// import RscStructuredText;
// import RscTree;
import RscDisplayTeamSwitch;
// import RscControlsGroup;
// import RscEdit;
// import RscButtonMenu;
// import RscText;
// import RscMapControl;
// import RscListBox;
// import RscButton;
// import RscToolbox;
// import RscCombo;
// import RscProgress;
// import RscPicture;

#include "dialogs\dialog.hpp"

class RscTitles {
	#include "dialogs\hud.hpp"
};

class YMF_RscButtonMenu: RscButtonMenu {
	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorBackgroundFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
	colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
};

class YMF_RscTreeSearch: RscTree {
	idcSearch=645;
};

class YMF_mapButton: RscButtonMenu {
	idc = -1;
	text = "Mission Status";
	x = 0.914 * safezoneW + safezoneX;
	y = 0.3 * safezoneH + safezoneY;
	w = 0.071 * safezoneW;
	onButtonClick = "call YMF_fnc_showMissionInfo";
};


#include "dialogs\groupMenu.hpp"
#include "dialogs\tp_dialog.hpp"
#include "dialogs\buildMenu.hpp"
#include "dialogs\crateMenu.hpp"
#include "dialogs\deployMenu.hpp"
#include "dialogs\environmentControlMenu.hpp"
#include "dialogs\factoryMenu.hpp"
#include "dialogs\intelMenu.hpp"
#include "dialogs\logisticsMenu.hpp"
#include "dialogs\nameMenu.hpp"
#include "dialogs\retrieveMenu.hpp"
#include "dialogs\supportMenu.hpp"
#include "dialogs\zeusMenu.hpp"