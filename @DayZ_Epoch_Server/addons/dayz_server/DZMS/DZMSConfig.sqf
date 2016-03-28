/*
	DayZ Mission System Config by Vampire
	DZMS: https://github.com/SMVampire/DZMS-DayZMissionSystem
*/

///////////////////////////////////////////////////////////////////////
// Do you want your players to gain humanity from killing mission AI?
DZMSMissHumanity = true;

// How Much Humanity?
DZMSCntHumanity = 25;

// Do You Want AI to use NVGs?
//(They are deleted on death)
DZMSUseNVG = false;

// Do you want AI to use RPG7V's?
//(Only one unit per group spawn will have one)
DZMSUseRPG = true;

// Do you want AI kills to count as bandit kills?
DZMSCntBanditKls = true;

// Do you want AI to disappear instantly when killed?
DZMSCleanDeath = false;

// Do you want AI that players run over to not have gear?
// (If DZMSCleanDeath is true, this doesn't matter)
DZMSRunGear = false;

// How long before bodies disappear? (in seconds) (default = 2400)
DZMSBodyTime = 2400;

// Percentage of AI that must be dead before mission completes (default = 0)
//( 0 is 0% of AI / 0.50 is 50% / 1 is 100% )
DZMSRequiredKillPercent = 0;

// How long in seconds before mission scenery disappears (default = 1800 / 0 = disabled)
DZMSSceneryDespawnTimer = 1800;

// Should crates despawn with scenery? (default = false)
DZMSSceneryDespawnLoot = false;

//////////////////////////////////////////////////////////////////////////////////////////
// You can adjust the weapons that spawn in weapon crates inside DZMSWeaponCrateList.sqf
// You can adjust the AI's gear inside DZMSAIConfig.sqf in the ExtConfig folder also.
//////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////
// Do you want to use static coords for missions?
// Leave this false unless you know what you are doing.
DZMSStaticPlc = false;

// Array of static locations. X,Y,Z
DZMSStatLocs = [
[0,0,0],
[0,0,0]
];

///////////////////////////////////////////////////////////////////////////////////////////////////////////
// Do you want vehicles from missions to save to the Database? (this means they will stay after a restart)
// If False, vehicles will disappear on restart. It will warn a player who gets inside of a vehicle.
// This is experimental, and off by default in this version.
DZMSSaveVehicles = true;

/////////////////////////////////////////////////////////////////////////////////////////////
// These are arrays of vehicle classnames for the missions.
// Adjust to your liking.

//Armed Choppers (Huey)
DZMSChoppers = [
"UH1H_DZ",
"Mi17_DZ""a10",
"AH1Z",
"AH64D",
"AH64D_EP1",
"AH64D_Sidewinders",
"AH6J_EP1",
"AH6X_DZ",
"AH6X_EP1",
"AW159_Lynx_BAF",
"BAF_Apache_AH1_D",
"baf_merlin_dze",
"BAF_Merlin_HC3_D",
"c130j",
"c130j_us_ep1",
"c130j_us_ep1_dz",
"CH_47F_BAF",
"CH_47F_EP1",
"CH_47F_EP1_DZ",
"CH_47F_EP1_DZE",
"ch53_dze",
"Ka137_MG_PMC",
"Ka137_PMC",
"Ka52",
"Ka52Black",
"Ka60_GL_PMC",
"Ka60_PMC",
"l39_tk_ep1",
"m6_ep1",
"MH60S",
"MH6J_DZ",
"MH6J_EP1",
"Mi17_CDF",
"Mi17_Civilian",
"Mi17_Civilian_DZ",
"Mi17_DZ",
"mi17_dze",
"Mi17_Ins",
"Mi17_medevac_CDF",
"Mi17_medevac_INS",
"Mi17_medevac_RU",
"Mi17_rockets_RU",
"Mi17_TK_EP1",
"Mi17_UN_CDF_EP1",
"Mi171Sh_CZ_EP1",
"Mi171Sh_rockets_CZ_EP1",
"Mi24_D",
"Mi24_D_TK_EP1",
"Mi24_P",
"Mi24_V",
"mq9predatorb_us_ep1",
"MV22",
"MV22_DZ",
"UH1H_DZ",
"UH1H_DZE",
"UH1H_TK_EP1",
"UH1H_TK_GUE_EP1",
"uh1y",
"UH1Y_DZ",
"UH1Y_DZE",
"UH60M_EP1",
"UH60M_EP1_DZ",
"uh60m_ep1_dze",
"UH60M_EP1_DZE",
"UH60M_MEV_EP1"];

//Small Vehicles (Humvees)
DZMSSmallVic = [
"hilux1_civil_3_open_EP1",
"SUV_TK_CIV_EP1","Ural_INS",
"HMMWV_DZ",
"SUV_Armored_DZ",
"suv_blue",
"suv_camo",
"suv_charcoal",
"SUV_DZ",
"suv_green",
"suv_orange",
"suv_pink",
"SUV_PMC",
"SUV_PMC_BAF",
"suv_red",
"suv_silver",
"SUV_TK_CIV_EP1",
"SUV_TK_EP1",
"SUV_UN_EP1",
"suv_white",
"suv_yellow",
"UAZ_Unarmed_UN_EP1"
];

//Large Vehicles (Urals)
DZMSLargeVic = [
"Ural_TK_CIV_EP1",
"Ural_CDF",
"Ural_CDF_DZ",
"Ural_INS",
"Ural_TK_CIV_EP1",
"Ural_UN_EP1",
"ural_zu23_cdf",
"ural_zu23_gue",
"ural_zu23_ins",
"ural_zu23_tk_ep1",
"ural_zu23_tk_gue_ep1",
"UralCivil",
"UralCivil_DZE",
"UralCivil2",
"UralCivil2_DZE",
"UralOpen_CDF",
"UralOpen_INS",
"uralreammo_cdf",
"uralreammo_ins",
"uralreammo_tk_ep1",
"UralRefuel_CDF",
"UralRefuel_INS",
"UralRefuel_TK_EP1",
"uralrefuel_tk_ep1_dz",
"uralrepair_cdf",
"uralrepair_ins",
"uralrepair_tk_ep1",
"uralsalvage_tk_ep1",
"uralsupply_tk_ep1",
"V3S_Civ",
"v3s_gue",
"V3S_Open_TK_CIV_EP1",
"V3S_Open_TK_EP1",
"V3S_RA_TK_GUE_EP1_DZE",
"v3s_reammo_tk_gue_ep1",
"V3S_Refuel_TK_GUE_EP1",
"v3s_refuel_tk_gue_ep1_dz",
"v3s_repair_tk_gue_ep1",
"v3s_salvage_tk_gue_ep1",
"v3s_supply_tk_gue_ep1",
"V3S_TK_EP1",
"V3S_TK_EP1_DZE",
"V3S_TK_GUE_EP1"
];

/*///////////////////////////////////////////////////////////////////////////////////////////
There are two types of missions that run simultaneously on a the server.
The two types are Major and Minor missions.

Major missions have a higher AI count, but also have more crates to loot.
Minor missions have less AI than Major missions, but have crates that reflect that.

Below is the array of mission file names and the minimum and maximum times they run.
Do not edit the Arrays unless you know what you are doing.
*/
DZMSMajorArray = ["SM1","SM2","SM3","SM4","SM5","SM6","EM1"];
DZMSMajorArray2 = ["SM1","SM2","SM3","SM4","SM5","SM6","EM1"];
DZMSMinorArray = ["SM1","SM2","SM3","SM4","SM5","SM6","SM7","SM8","SM9"];

/////////////////////////////////////////////////////////////////////////////////////////////
// The Minumum time in seconds before a major mission will run.
// At least this much time will pass between major missions. Default = 650 (10.8 Minutes)
DZMSMajorMin = 650;
DZMSMajorMin2 = 600;

// Maximum time in seconds before a major mission will run.
// A major mission will always run before this much time has passed. Default = 2000 (33.33 Minutes)
DZMSMajorMax = 2000;
DZMSMajorMax2 = 1500;
// Time in seconds before a minor mission will run.
// At least this much time will pass between minor missions. Default = 600 (10 Minutes)
DZMSMinorMin = 600;

// Maximum time in seconds before a minor mission will run.
// A minor mission will always run before this much time has passed. Default = 990 (16.5 Minutes)
DZMSMinorMax = 990;

// Blacklist Zone Array -- missions will not spawn in these areas
// format: [[x,y,z],radius]
// Ex: [[06325,07807,0],300] //Starry Sobor
DZMSBlacklistZones = [
	[[0,0,0],50]
];

/*=============================================================================================*/
// Do Not Edit Below This Line
/*=============================================================================================*/
DZMSVersion = "RC1.1";
