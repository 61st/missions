class YMF_crateMenu : RscDisplayTeamSwitch
{
	idd=9642;
	name="YMF_crateMenu";
	movingEnable=0;
	onLoad = "";
	onUnload = "";
	class Controls : Controls
	{
		class Title : CA_TSTitle
		{
			text = "Crate Menu";
		};
		class CrateList : RscTree
		{
			idc = 1500;
			onTreeSelChanged = "_this call YMF_fnc_onSupplyCrateTvChange;";
			x = "1.2 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "2.3 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "15 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "20.4 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class CrateInformationControlGroup: RscControlsGroup
		{
			delete HScrollBar;

			idc = 1205;

			h = 20.4 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
			w = 22.5 * (((safezoneW / safezoneH) min 1.2) / 40);
			x = 16.5 * (((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2);
			y = 2.3 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2);

			class Controls
			{
				class Information: RscStructuredText
				{
					idc = 1100;
					text = "";
					h = 20.4 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
					w = 21.8 * (((safezoneW / safezoneH) min 1.2) / 40);
					x = 0;
					y = 0;
				};
			};
		};
		class CancelBtn : CA_ButtonCancel
		{
			text = "$STR_DISP_CANCEL";
		};
		class SelectCrateBtn : CA_ButtonContinue
		{
			idc = 2400;
			text = "Select";
			onButtonClick = "[] call YMF_fnc_createSupplyCrate;";
		};
	};
};