#include ".\script_mod.hpp"

/* Macros adapted from by the brilliant work at CBA. Give them some love at https://github.com/CBATeam/CBA_A3 */

#define PROJECT_VERSION MAJOR.MINOR.PATCHLVL.BUILD
#define PROJECT_VERSION_AR MAJOR,MINOR,PATCHLVL,BUILD

#define PROJECT DOUBLES(PREFIX,COMPONENT)

#define DOUBLES(var1,var2) ##var1##_##var2
#define TRIPLES(var1,var2,var3) ##var1##_##var2##_##var3
#define QUOTE(var1) #var1
#define QQUOTE(var1) QUOTE(QUOTE(var1))

#define GVAR(var1) DOUBLES(PROJECT,var1)
#define QGVAR(var1) QUOTE(GVAR(var1))
#define QQGVAR(var1) QUOTE(QGVAR(var1))

#define FUNC(var1) TRIPLES(PROJECT,fnc,var1)
#define QFUNC(var1) QUOTE(FUNC(var1))

#define FUNC_1(var1,var2) [var2] call FUNC(var1)
#define FUNC_2(var1,var2,var3) [var2,var3] call FUNC(var1)
#define FUNC_3(var1,var2,var3,var4) [var2,var3,var4] call FUNC(var1)
#define FUNC_4(var1,var2,var3,var4,var5) [var2,var3,var4,var5] call FUNC(var1)
#define FUNC_5(var1,var2,var3,var4,var5,var6) [var2,var3,var4,var5,var6] call FUNC(var1)

#define FUNC_ASYNC_1(var1,var2) [var2] spawn FUNC(var1)
#define FUNC_ASYNC_2(var1,var2,var3) [var2,var3] spawn FUNC(var1)
#define FUNC_ASYNC_3(var1,var2,var3,var4) [var2,var3,var4] spawn FUNC(var1)
#define FUNC_ASYNC_4(var1,var2,var3,var4,var5) [var2,var3,var4,var5] spawn FUNC(var1)
#define FUNC_ASYNC_5(var1,var2,var3,var4,var5,var6) [var2,var3,var4,var5,var6] spawn FUNC(var1)

#define ARR_1(ARG1) ARG1
#define ARR_2(ARG1,ARG2) ARG1, ARG2
#define ARR_3(ARG1,ARG2,ARG3) ARG1, ARG2, ARG3
#define ARR_4(ARG1,ARG2,ARG3,ARG4) ARG1, ARG2, ARG3, ARG4
#define ARR_5(ARG1,ARG2,ARG3,ARG4,ARG5) ARG1, ARG2, ARG3, ARG4, ARG5
#define ARR_6(ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) ARG1, ARG2, ARG3, ARG4, ARG5, ARG6
#define ARR_7(ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7
#define ARR_8(ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7, ARG8

#define ARG_1(A,B) ((A) select (B))
#define ARG_2(A,B,C) (ARG_1(ARG_1(A,B),C))
#define ARG_3(A,B,C,D) (ARG_1(ARG_2(A,B,C),D))
#define ARG_4(A,B,C,D,E) (ARG_1(ARG_3(A,B,C,D),E))
#define ARG_5(A,B,C,D,E,F) (ARG_1(ARG_4(A,B,C,D,E),F))
#define ARG_6(A,B,C,D,E,F,G) (ARG_1(ARG_5(A,B,C,D,E,F),G))
#define ARG_7(A,B,C,D,E,F,G,H) (ARG_1(ARG_6(A,B,C,D,E,E,F,G),H))
#define ARG_8(A,B,C,D,E,F,G,H,I) (ARG_1(ARG_7(A,B,C,D,E,E,F,G,H),I))

#define FORMAT_1(STR,ARG1) format[STR, ARG1]
#define FORMAT_2(STR,ARG1,ARG2) format[STR, ARG1, ARG2]
#define FORMAT_3(STR,ARG1,ARG2,ARG3) format[STR, ARG1, ARG2, ARG3]
#define FORMAT_4(STR,ARG1,ARG2,ARG3,ARG4) format[STR, ARG1, ARG2, ARG3, ARG4]
#define FORMAT_5(STR,ARG1,ARG2,ARG3,ARG4,ARG5) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5]
#define FORMAT_6(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6]
#define FORMAT_7(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7]
#define FORMAT_8(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7, ARG8]

#define LOG_SYS_FORMAT(LEVEL,MESSAGE) format ['(%1) [%2] %3: %4', toUpper 'PREFIX', toUpper 'COMPONENT', LEVEL, MESSAGE]

#define LOG_SYS(LEVEL,MESSAGE) diag_log text LOG_SYS_FORMAT(LEVEL,MESSAGE)

#define LOG_SYS_FILELINENUMBERS(LEVEL,MESSAGE) LOG_SYS(LEVEL,format [ARR_4('%1 - %2:%3',MESSAGE,__FILE__,__LINE__ + 1)])

#define SYS_CHAT(MESSAGE) systemChat format ['(%1) [%2]: %3', toUpper 'PREFIX', toUpper 'COMPONENT', MESSAGE]

#ifdef DEBUG_MODE

	#define LOG(MESSAGE) LOG_SYS_FILELINENUMBERS('LOG',MESSAGE)
	#define LOG_1(MESSAGE,ARG1) LOG(FORMAT_1(MESSAGE,ARG1))
	#define LOG_2(MESSAGE,ARG1,ARG2) LOG(FORMAT_2(MESSAGE,ARG1,ARG2))
	#define LOG_3(MESSAGE,ARG1,ARG2,ARG3) LOG(FORMAT_3(MESSAGE,ARG1,ARG2,ARG3))
	#define LOG_4(MESSAGE,ARG1,ARG2,ARG3,ARG4) LOG(FORMAT_4(MESSAGE,ARG1,ARG2,ARG3,ARG4))
	#define LOG_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) LOG(FORMAT_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5))
	#define LOG_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) LOG(FORMAT_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6))
	#define LOG_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) LOG(FORMAT_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7))
	#define LOG_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) LOG(FORMAT_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8))
	
#else

	#define LOG(MESSAGE) /* disabled */
	#define LOG_1(MESSAGE,ARG1) /* disabled */
	#define LOG_2(MESSAGE,ARG1,ARG2) /* disabled */
	#define LOG_3(MESSAGE,ARG1,ARG2,ARG3) /* disabled */
	#define LOG_4(MESSAGE,ARG1,ARG2,ARG3,ARG4) /* disabled */
	#define LOG_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) /* disabled */
	#define LOG_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) /* disabled */
	#define LOG_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) /* disabled */
	#define LOG_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) /* disabled */

#endif

#define INFO(MESSAGE) LOG_SYS('INFO',MESSAGE)
#define INFO_1(MESSAGE,ARG1) INFO(FORMAT_1(MESSAGE,ARG1))
#define INFO_2(MESSAGE,ARG1,ARG2) INFO(FORMAT_2(MESSAGE,ARG1,ARG2))
#define INFO_3(MESSAGE,ARG1,ARG2,ARG3) INFO(FORMAT_3(MESSAGE,ARG1,ARG2,ARG3))
#define INFO_4(MESSAGE,ARG1,ARG2,ARG3,ARG4) INFO(FORMAT_4(MESSAGE,ARG1,ARG2,ARG3,ARG4))
#define INFO_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) INFO(FORMAT_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5))
#define INFO_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) INFO(FORMAT_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6))
#define INFO_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) INFO(FORMAT_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7))
#define INFO_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) INFO(FORMAT_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8))


#ifdef DEBUG_MODE

	#define WARNING(MESSAGE) LOG_SYS_FILELINENUMBERS('WARNING',MESSAGE)
	#define WARNING_1(MESSAGE,ARG1) WARNING(FORMAT_1(MESSAGE,ARG1))
	#define WARNING_2(MESSAGE,ARG1,ARG2) WARNING(FORMAT_2(MESSAGE,ARG1,ARG2))
	#define WARNING_3(MESSAGE,ARG1,ARG2,ARG3) WARNING(FORMAT_3(MESSAGE,ARG1,ARG2,ARG3))
	#define WARNING_4(MESSAGE,ARG1,ARG2,ARG3,ARG4) WARNING(FORMAT_4(MESSAGE,ARG1,ARG2,ARG3,ARG4))
	#define WARNING_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) WARNING(FORMAT_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5))
	#define WARNING_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) WARNING(FORMAT_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6))
	#define WARNING_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) WARNING(FORMAT_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7))
	#define WARNING_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) WARNING(FORMAT_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8))

#else

	#define WARNING(MESSAGE) /* disabled */
	#define WARNING_1(MESSAGE,ARG1) /* disabled */
	#define WARNING_2(MESSAGE,ARG1,ARG2) /* disabled */
	#define WARNING_3(MESSAGE,ARG1,ARG2,ARG3) /* disabled */
	#define WARNING_4(MESSAGE,ARG1,ARG2,ARG3,ARG4) /* disabled */
	#define WARNING_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) /* disabled */
	#define WARNING_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) /* disabled */
	#define WARNING_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) /* disabled */
	#define WARNING_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) /* disabled */

#endif

#define ERROR(MESSAGE) LOG_SYS_FILELINENUMBERS('ERROR',MESSAGE); [LOG_SYS_FORMAT('ERROR',MESSAGE)] call BIS_fnc_error
#define ERROR_1(MESSAGE,ARG1) ERROR(FORMAT_1(MESSAGE,ARG1))
#define ERROR_2(MESSAGE,ARG1,ARG2) ERROR(FORMAT_2(MESSAGE,ARG1,ARG2))
#define ERROR_3(MESSAGE,ARG1,ARG2,ARG3) ERROR(FORMAT_3(MESSAGE,ARG1,ARG2,ARG3))
#define ERROR_4(MESSAGE,ARG1,ARG2,ARG3,ARG4) ERROR(FORMAT_4(MESSAGE,ARG1,ARG2,ARG3,ARG4))
#define ERROR_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) ERROR(FORMAT_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5))
#define ERROR_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) ERROR(FORMAT_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6))
#define ERROR_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) ERROR(FORMAT_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7))
#define ERROR_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) ERROR(FORMAT_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8))

#define ERROR_WITH_TITLE(TITLE,MESSAGE) ['PREFIX', 'COMPONENT', TITLE, MESSAGE, __FILE__, __LINE__ + 1] call FUNC(log)
#define ERROR_WITH_TITLE_1(TITLE,MESSAGE,ARG1) ERROR_WITH_TITLE(TITLE,FORMAT_1(MESSAGE,ARG1))
#define ERROR_WITH_TITLE_2(TITLE,MESSAGE,ARG1,ARG2) ERROR_WITH_TITLE(TITLE,FORMAT_2(MESSAGE,ARG1,ARG2))
#define ERROR_WITH_TITLE_3(TITLE,MESSAGE,ARG1,ARG2,ARG3) ERROR_WITH_TITLE(TITLE,FORMAT_3(MESSAGE,ARG1,ARG2,ARG3))
#define ERROR_WITH_TITLE_4(TITLE,MESSAGE,ARG1,ARG2,ARG3,ARG4) ERROR_WITH_TITLE(TITLE,FORMAT_4(MESSAGE,ARG1,ARG2,ARG3,ARG4))
#define ERROR_WITH_TITLE_5(TITLE,MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5) ERROR_WITH_TITLE(TITLE,FORMAT_5(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5))
#define ERROR_WITH_TITLE_6(TITLE,MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6) ERROR_WITH_TITLE(TITLE,FORMAT_6(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6))
#define ERROR_WITH_TITLE_7(TITLE,MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7) ERROR_WITH_TITLE(TITLE,FORMAT_7(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7))
#define ERROR_WITH_TITLE_8(TITLE,MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8) ERROR_WITH_TITLE(TITLE,FORMAT_8(MESSAGE,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8))

/* End CBA macros */

/* Start custom macros */

#define SCRIPT(var1) PROJECT\fnc\fn_##var1##.sqf
#define IMAGE(var1) PROJECT\data\##var1##.paa

#define SYSCHAT_VAR(var) systemChat FORMAT_1(QUOTE(var: %1),var)
#define LOG_VAR(var) LOG_1((QUOTE(var: %1),var)

#define DEF_FUNC(var1) class var1 {file = #SCRIPT(var1);}
#define DEF_FUNC_PRE(var1) class var1 {file = #SCRIPT(var1); preInit = 1;}
#define DEF_FUNC_POST(var1) class var1 {file = #SCRIPT(var1); postInit = 1;}

#define SET_VAR(var1,var2,var3) var1 setVariable [#var2,var3]
#define SET_VAR_G(var1,var2,var3) var1 setVariable [#var2,var3,true]
#define UNSET_VAR(var1,var2,var3) SET_VAR(var1,var2,nil)
#define GET_VAR_D(var1,var2,var3) var1 getVariable [#var2,var3]
#define GET_VAR(var1,var2) GET_VAR_D(var1,var2,nil)
#define GET_VAR_ARR(var1,var2) GET_VAR_D(var1,var2,[])
#define GET_MVAR(var1) GET_VAR(missionNamespace,var1)

#define DEF_VAR(var1,var2) if(isNil #var1) then {var1 = var2}
#define DEF_GVAR(var1,var2) DEF_VAR(GVAR(var1),var2)

#define DEF_NVAR(var1,var2,var3) if(isNil {GET_VAR(var1,var2)})) then {SET_VAR(var1,var2,var3)}
#define DEF_NVAR_G(var1,var2,var3) if(isNil {GET_VAR(var1,var2)})) then {SET_VAR_G(var1,var2,var3)}

#define DEF_MVAR(var1,var2) DEF_NVAR(missionNamespace,var1,var2)
#define DEF_MVAR_G(var1,var2) DEF_NVAR_G(missionNamespace,var1,var2)

#define GET_ROBJ(var1,var2) missionNameSpace getVariable [ARR_2(FORMAT_2("%1_%2",var1,var2),objNull)]
#define GET_ROBJ_L(var1,var2,var3) missionNameSpace getVariable [ARR_2(FORMAT_3("%1_%2_l%3",var1,var2,var3),objNull)]
#define GET_ROBJ_L_T(var1,var2,var3,var4) missionNameSpace getVariable [ARR_2(FORMAT_4("%1_%2_l%3_t%4",var1,var2,var3,var4),objNull)]

#define TYPE_ERROR(var1) ERROR_2("%1 was wrong type: %2",QUOTE(var1),typeName var1)
#define TYPE_ERROR_INDEX(var1) ERROR_3("%1-%2 was wrong type: %3",QUOTE(var1),_forEachIndex+1,typeName var1)
#define NIL_ERROR(var1) ERROR_1("%1 was nil", QUOTE(var1))
#define NIL_ERROR_INDEX(var1) ERROR_2("%1-%2 was nil", QUOTE(var1),_forEachIndex+1)
#define BOUNDS_ERROR(var1,var2) ERROR_2("%1: %2 was outside bounds", QUOTE(var1), var2)
#define BOUNDS_ERROR_INDEX(var1,var2) ERROR_3("%1-%2: %3 was outside bounds", QUOTE(var1), _forEachIndex+1, var2)

//#define ACTION_COND(var1,var2) FORMAT_1(QUOTE(!(((GET_VAR(var1,var2)) select %1) select 7)),_fieldId)
#define ACTION_COND(var1,var2,var3) FORMAT_3(ARG_2(GET_VAR(%1,%2),%3),var1,var2,var3)
//#define ACTION_COND_NOT(var1,var2) FORMAT_2(QUOTE(!ARG_2(%1,%2,7)),var1,var2)

#define GET_CTRL(var) ((findDisplay 46) displayCtrl var)
#define SET_RANGE_VAR(var1,var2) SET_VAR_G(_objectCtrl,GVAR(var1),var2)
#define SET_RANGE_VAR_X(var1) SET_RANGE_VAR(var1,_##var1)

#define DEF_RANGE_PARAMS params ["_rangeType","_rangeTitle","_rangeTag","_laneCount","_targetCount","_rangeSequence",["_rangeGrouping",[]],"_qualTiers",["_addInstructorActions",false],["_useCustomTexture",false],["_laneColors",[]]]

#ifdef DEBUG_MODE
	#define LOG_VAR(var1) LOG_2("%1: %2",QUOTE(var1),var1)
	#define LOG_GVAR(var1) LOG_VAR(GVAR(var1))
	//#define LOG_NVAR(var1,var2) LOG_2("%1: %2", format ["##var1 getVariable [%2,'undefined']", #var1, #var2 ], var1 getVariable [ #var2 ,"undefined"])
	#define LOG_NVAR(var1,var2) LOG_2("%1: %2", (FORMAT_2("%1 getVariable [%2,'undefined']", QUOTE(var1), QUOTE(var2))), GET_VAR_D(var1,var2,'undefined')))
#else
	#define LOG_GVAR(var1) /* disabled */
	#define LOG_NVAR(var1,var2) /* disabled */
	#define LOG_VAR(var1) /* disabled */
#endif
