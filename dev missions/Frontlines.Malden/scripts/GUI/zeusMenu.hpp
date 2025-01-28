class YMF_zeusMenu : RscDisplayTeamSwitch
{
	idd=9649;
	name="YMF_zeusMenu";
	movingEnable=0;
	onLoad = "";
	onUnload = "";
	class Controls : Controls
	{
		class Title: CA_TSTitle
		{
			text = "Zeus Menu";
		};
		class FOBList: RscListbox
		{
			idc = 1501;
			x = "1.2 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "12.7 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "9.1 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "10 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class RscButtonMenu_2404: RscButtonMenu
		{
			idc = 2404;
			text = "Add Supplies"; //--- ToDo: Localize;
			onButtonClick="[""adjustResources"",0] call YMF_fnc_zeusAction";
			x = "10.6 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "14.0 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "9.1 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class RscButtonMenu_2405: RscButtonMenu
		{
			idc = 2405;
			text = "Add Fuel"; //--- ToDo: Localize;
			onButtonClick="[""adjustResources"",1] call YMF_fnc_zeusAction";
			x = "10.6 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "15.3 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "9.1 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class RscButtonMenu_2406: RscButtonMenu
		{
			idc = 2406;
			text = "Add Ammo"; //--- ToDo: Localize;
			onButtonClick="[""adjustResources"",2] call YMF_fnc_zeusAction";
			x = "10.6 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "16.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "9.1 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class RscButtonMenu_2416: RscButtonMenu
		{
			idc = 2417;
			text = "Force Save"; //--- ToDo: Localize;
			onButtonClick="[""forceSave""] call YMF_fnc_zeusAction";
			x = "20 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "2.3 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "9.1 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class RscButtonMenu_2417: RscButtonMenu
		{
			idc = 2418;
			text = "Wipe Save"; //--- ToDo: Localize;
			onButtonClick="[""wipeSave""] spawn YMF_fnc_zeusAction";
			x = "20 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "3.6 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "9.1 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			colorBackground[]={0.52899998,0,0,1};
		};
	};
};