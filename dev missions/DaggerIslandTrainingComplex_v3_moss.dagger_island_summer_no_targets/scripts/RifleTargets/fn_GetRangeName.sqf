/*
	Author: Mossarelli

	Description:
	Function to get the name of the range from the array in the file RangeNamesConfig.sqf

	Parameter(s):
	Uses Logic names as objects to store the variable on.
	
	Returns:
	N/A
*/

#include "RangeNamesConfig.sqf"

_logic = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if (isNull _logic) exitWith
{
	[
		format ["Error: Logic didn't pass to GetRangeName.sqf",_logic]
	] call BIS_fnc_errorMsg;
};
_return = "";

{
	if (_logic == (_x select 0)) exitWith
	{
		_return = (_x select 1);
		_logic setVariable ["MossRangeNumber",_return,true];
	};
} foreach Moss_ListOfLanes;

_return
