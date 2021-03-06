/*
	DayZ Mission System Config by Vampire
	DZMSHotSpots: https://github.com/SMVampire/DZMSHotSpots-DayZMissionSystem
*/

///////////////////////////////////////////////////////////////////////
// Do you want your players to gain humanity from killing mission AI?
DZMSHotSpotsMissHumanity = true;

// How Much Humanity?
DZMSHotSpotsCntHumanity = 25;

// Do You Want AI to use NVGs?
//(They are deleted on death)
DZMSHotSpotsUseNVG = false;

// Do you want AI to use RPG7V's?
//(Only one unit per group spawn will have one)
DZMSHotSpotsUseRPG = true;

// Do you want AI kills to count as bandit kills?
DZMSHotSpotsCntBanditKls = true;

// Do you want AI to disappear instantly when killed?
DZMSHotSpotsCleanDeath = false;

// Do you want AI that players run over to not have gear?
// (If DZMSHotSpotsCleanDeath is true, this doesn't matter)
DZMSHotSpotsRunGear = false;

// How long before bodies disappear? (in seconds) (default = 2400)
DZMSHotSpotsBodyTime = 2400;

// Percentage of AI that must be dead before mission completes (default = 0)
//( 0 is 0% of AI / 0.50 is 50% / 1 is 100% )
DZMSHotSpotsRequiredKillPercent = 0;

// How long in seconds before mission scenery disappears (default = 1800 / 0 = disabled)
DZMSHotSpotsSceneryDespawnTimer = 300;

// Should crates despawn with scenery? (default = false)
DZMSHotSpotsSceneryDespawnLoot = true;

//////////////////////////////////////////////////////////////////////////////////////////
// You can adjust the weapons that spawn in weapon crates inside DZMSHotSpotsWeaponCrateList.sqf
// You can adjust the AI's gear inside DZMSHotSpotsAIConfig.sqf in the ExtConfig folder also.
//////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////
// Do you want to use static coords for missions?
// Leave this false unless you know what you are doing.
DZMSHotSpotsStaticPlc = true;

// Array of static locations. X,Y,Z: overall possible hotspots
DZMSHotSpotsCherno = [
[ 5946.7, 10358.3, 0.0],
[ 3834.0,  8981.1, 0.0],
[ 5852.3,  4713.5, 0.0],
[10663.6,  7982.3, 0.0],
[11992.8,  9125.6, 0.0],
[12289.3, 10639.7, 1.6],
[12842.2,  4430.2, 0.0],
[10071.5,  1825.4, 0.2],
[ 8314.9,  3365.7, 0.0],
[ 6303.2,  2599.8, 0.0],
[ 1725.7,  2225.9, 0.8],
[ 9280.5,  8822.4, 0.5],
[ 4540.6,  6395.9, 0.0],
[ 2583.5,  6335.9, 0.0],
[ 1656.9,  3829.6, 0.0],
[10322.0,  5489.9, 0.0],
[12035.8,  3528.7, 0.0],
[ 8452.5,  6659.4, 0.0],
[ 4459.7,  4636.8, 0.0],
[ 8545.4, 11896.9, 0.1],
[11021.0, 12468.3, 0.0],
[12913.0, 10140.6, 0.0],
[12872.0,  8030.2, 0.0],
[13325.4,  6279.2, 0.0],
[11193.8,  6562.6, 0.0],
[12129.1,  7190.2, 0.0],
[11228.9,  5393.0, 0.0],
[ 9716.5,  6542.1, 0.0],
[10587.3,  2111.5, 0.0],
[ 6819.3,  2526.8, 0.0],
[ 6351.1,  3261.3, 0.0],
[ 4435.6,  2434.9, 0.0],
[ 3664.7,  2444.3, 0.0],
[ 3376.3,  3933.0, 0.0],
[ 3428.6,  4898.0, 0.0],
[ 2778.5,  5390.0, 0.0],
[ 2007.1,  7322.6, 0.0],
[ 3158.4,  8011.4, 0.0],
[ 2809.6,  9958.9, 0.0],
[ 5000.1, 12492.3, 0.0],
[ 6555.0,  6091.3, 0.0],
[ 7588.0,  5145.6, 0.0],
[ 4940.0,  5622.0, 0.0],
[ 9114.9,  3847.2, 0.0],
[ 4759.8,  6775.1, 0.0],
[ 5380.9,  8512.0, 0.0],
[ 7088.5,  7756.8, 0.0],
[ 6111.5,  7694.5, 0.0],
[10556.2,  9685.0, 0.0],
[ 8225.4, 11628.5, 0.0],
[ 9984.2, 10380.3, 0.0],
[ 4338.3,  4017.1, 0.0],
[10580.2,  9875.9, 0.0]
];

DZMSHotSpotsNapf = [
[16420.4, 15366.2, 0.0],
[17217.6, 13916.3, 0.0],
[15720.6, 14071.9, 0.0],
[15542.6, 14075.2, 0.0],
[15650.1, 13330.4, 0.0],
[15459.9, 13401.5, 0.0],
[14851.3, 14170.9, 0.0],
[14375.3, 14077.9, 0.0],
[13626.0, 13924.4, 0.0],
[12583.5, 14328.0, 0.0],
[12262.2, 15472.6, 0.0],
[10926.4, 15882.5, 0.0],
[ 9994.1, 16686.8, 0.0],
[ 8856.5, 16650.0, 0.0],
[ 8350.0, 17232.0, 0.0],
[ 8469.7, 16259.4, 0.0],
[ 8975.4, 15751.1, 0.0],
[ 9298.3, 15706.7, 0.0],
[ 7409.8, 16003.7, 0.0],
[ 6571.7, 16639.6, 0.0],
[ 5597.9, 16208.0, 0.0],
[ 5793.1, 15243.0, 0.0],
[ 3876.9, 14313.9, 0.0],
[ 3876.9, 14313.9, 0.0],
[ 4621.0, 12203.0, 0.0],
[ 5760.1, 11734.6, 0.0],
[ 2367.7, 11252.4, 0.0],
[ 2045.6,  9717.0, 0.0],
[ 3445.0,  9580.5, 0.0],
[ 2410.9,  7745.6, 0.0],
[ 3600.2,  7977.1, 0.0],
[ 2475.5,  7683.5, 0.0],
[ 9202.3,  5481.5, 0.0],
[10984.0,  1932.8, 0.0],
[14389.1,  2973.8, 0.0],
[16835.3,  5138.1, 0.0],
[13522.7,  5331.7, 0.0],
[13097.0,  6929.1, 0.0],
[11120.7,  8634.0, 0.0],
[ 9823.6,  9973.9, 0.0],
[ 8342.9,  7800.3, 0.0],
[16874.3,  5158.2, 0.0]
];

DZMSHotSpotsTaviBase = [
[ 3388.3,  7529.6, 0.0],
[ 3758.1,  7030.1, 0.0],
[ 7994.8,  4321.3, 0.0],
[ 7714.0,  4728.9, 0.0],
[ 8975.2,  2230.3, 0.0],
[11058.4,   704.7, 0.0],
[11637.7,   686.6, 0.0],
[ 9173.0,  5379.7, 0.0],
[ 9557.7,  5736.2, 0.0],
[10668.9,  6522.6, 0.0],
[ 8225.1,  6082.2, 0.0],
[ 7950.5,  6709.1, 0.0],
[ 9086.5,  8044.3, 0.0],
[ 6705.7,  9839.7, 0.0],
[ 5924.5,  9919.6, 0.0],
[ 5353.0,  8658.5, 0.0],
[17651.1,  6296.5, 0.0],
[17407.5,  7563.4, 0.0],
[15582.0,  8496.8, 0.0],
[15301.3,  7854.5, 0.0],
[15476.3,  9618.4, 0.0],
[15005.7, 10173.8, 0.0],
[14144.1, 11895.3, 0.0],
[14129.6, 12388.8, 0.0],
[12784.8, 11822.3, 0.0],
[13594.8, 13523.3, 0.0],
[12430.8, 13712.3, 0.0],
[12721.2, 14542.6, 0.0],
[12616.4, 15137.2, 0.0],
[12182.0, 15413.8, 0.0],
[11559.9, 15633.1, 0.0],
[11338.2, 15182.9, 0.0],
[11273.8, 17814.6, 0.0],
[10042.4, 19070.6, 0.0],
[ 8912.4, 19398.7, 0.0],
[13461.3, 19368.7, 0.0],
[15031.9, 18184.9, 0.0],
[15360.7, 16038.6, 0.0],
[16270.7, 13750.3, 0.0],
[16856.8, 12573.8, 0.0]
];
DZMSHotSpotsTaviOrigins = [
[ 8351.5, 10864.9, 0.0],
[ 4253.8, 14079.9, 0.0],
[ 5390.0, 14720.1, 0.0],
[ 5626.1, 16095.8, 0.0],
[ 5640.6, 16731.6, 0.0],
[ 5902.9, 17435.0, 0.0],
[ 5122.6, 17731.4, 0.0],
[ 3772.4, 17800.2, 0.0],
[ 2839.0, 17203.4, 0.0],
[ 1852.6, 17099.4, 0.0]
];

DZMSHotSpotsTakistan = [
[10648.0, 12039.0, 0.0],
[ 8409.5, 11279.6, 0.0],
[ 7739.0, 11480.3, 0.0],
[11889.5, 11339.6, 0.0],
[11889.5, 11339.6, 0.0],
[ 1706.0, 11035.5, 0.0],
[ 2716.5, 10025.6, 0.0],
[ 3100.5,  9573.6, 0.0],
[ 1005.0,  8480.2, 0.0],
[ 1699.0,  7176.2, 0.0],
[ 3433.0,  6132.2, 0.0],
[ 5189.5,  7134.6, 0.0],
[ 1519.0,  6720.2, 0.0],
[ 1245.0,  4018.2, 0.0],
[  487.0,  2562.2, 0.0],
[ 5165.0,  3346.2, 0.0],
[ 7397.0,  6304.2, 0.0],
[ 8636.5,  2985.6, 0.0],
[ 8468.5,  3466.6, 0.0],
[ 9655.0,  4540.2, 0.0],
[ 9697.5,  5272.6, 0.0],
[ 9693.0,  5786.2, 0.0],
[11310.5,  7943.6, 0.0],
[12180.5,  9773.6, 0.0],
[ 8997.0,  7592.2, 0.0],
[ 4527.5,  9006.6, 0.0],
[ 4076.5,  9116.6, 0.0],
[ 4468.5,  9518.6, 0.0],
[ 8031.5,  1851.6, 0.0],
[ 8160.5,  1773.6, 0.0],
[ 5307.5, 10899.6, 0.0],
[ 5013.5, 11106.6, 0.0],
[ 4484.5, 11659.6, 0.0],
[ 8241.0, 12022.3, 0.0],
[ 7496.5,  7347.6, 0.0]
];

DZMSHotSpotsMiroslavl = [
[ 9991.2,  2351.1, 0.0],
[10113.8,  2150.1, 0.0],
[ 9716.9,  2014.0, 0.0],
[ 9360.6,  1558.9, 0.0],
[ 8705.7,  1791.9, 0.0],
[ 8085.8,  2678.9, 0.0],
[ 9221.6,  2637.1, 0.0],
[10348.9,  3448.4, 0.0],
[11546.5,  4352.1, 0.0],
[11981.6,  5939.0, 0.0],
[12350.6,  7146.8, 0.0],
[ 7562.5,  4261.1, 0.0],
[ 8697.0,  5172.9, 0.0],
[10476.8,  6094.0, 0.0],
[11867.2,  8971.4, 0.0],
[ 7801.0,  6298.9, 0.0],
[ 8771.6,  7665.3, 0.0],
[ 7933.9,  9281.1, 0.0],
[ 7615.8,  8525.0, 0.0],
[10274.2,  8872.4, 0.0],
[ 6263.9,  9221.6, 0.0],
[ 9443.4,  9886.5, 0.0],
[11074.6,  1105.4, 0.0],
[ 8595.4, 10808.8, 0.0],
[ 6919.9, 10562.4, 0.0],
[ 8161.7, 11342.0, 0.0],
[ 8049.3, 12038.0, 0.0],
[11361.6, 11875.9, 0.0],
[ 9906.5, 11268.9, 0.0],
[ 7235.2, 12318.5, 0.0],
[ 6152.9, 12688.1, 0.0],
[ 5651.3, 11692.4, 0.0],
[ 4833.2, 11687.3, 0.0],
[ 1457.5, 11267.5, 0.0],
[ 1373.0,  9772.1, 0.0],
[ 3411.6, 10131.0, 0.0],
[ 4449.8,  9859.1, 0.0],
[ 5687.3,  9344.0, 0.0],
[ 6247.1, 11102.7, 0.0],
[ 2181.0,  9768.8, 0.0],
[ 2563.6,  8936.7, 0.0],
[  515.2,  8834.5, 0.0],
[ 4857.4,  8304.6, 0.0],
[ 6535.8,  7227.2, 0.0],
[ 7165.9,  5604.4, 0.0],
[  335.8,  7029.3, 0.0],
[ 3077.6,  7936.8, 0.0],
[ 4403.0,  7228.1, 0.0],
[ 3226.1,   740.0, 0.0],
[ 1822.9,  1953.1, 0.0],
[  134.8,   346.3, 0.0],
[ 3141.0,  2353.4, 0.0],
[ 6278.8,  3006.8, 0.0],
[ 1740.0,  7081.0, 0.0],
[ 4000.0,  6895.0, 0.0],
[ 1907.0,  6205.0, 0.0],
[  865.0,  6209.0, 0.0],
[ 1644.0,  5365.0, 0.0],
[ 3242.0,  5921.0, 0.0],
[ 4981.0,  5471.0, 0.0],
[ 5475.0,  6007.0, 0.0],
[ 2551.0,  5006.0, 0.0],
[ 5328.0,  3002.0, 0.0],
[ 8890.0, 12704.0, 0.0]
];

// array of possible roadblock locations
DZMSRoadBlocksCherno = [
[10436.0,  9132.2, 0.0],
[11243.9, 12239.8, 0.0],
[12975.2,  8378.0, 0.0],
[12055.9,  3489.6, 0.0],
[10799.3,  2569.6, 0.0],
[ 7360.9,  3277.5, 0.0],
[ 4499.4,  2453.2, 0.0],
[ 3666.3,  2480.6, 0.0],
[ 1918.7,  2245.7, 0.0],
[ 1693.6,  3843.5, 0.0],
[ 2756.4,  5284.5, 0.0],
[ 2780.3,  5374.8, 0.0],
[ 2688.2,  6618.4, 0.0],
[ 3117.8,  8053.9, 0.0],
[ 4711.7,  6356.9, 0.0],
[ 5839.5,  4780.2, 0.0],
[ 3819.6,  5925.5, 0.0],
[ 2518.6,  9653.6, 0.0],
[ 5171.6,  8594.4, 0.0],
[ 5666.8,  7257.7, 0.0],
[10398.3,  8952.3, 0.0],
[11730.8,  9179.7, 0.0],
[10204.3,  9762.9, 0.0],
[ 8923.8, 11836.3, 0.0],
[10579.9,  7925.3, 0.0],
[11940.5,  6403.1, 0.0],
[11076.1,  5330.3, 0.0],
[11949.4,  3884.6, 0.0],
[12191.7,  7884.0, 0.0],
[12593.7,  8722.0, 0.0],
[12157.9,  8181.8, 0.0],
[ 8516.8,  6680.3, 0.0],
[ 7539.9,  5224.0, 0.0],
[ 5890.6,  4845.6, 0.0],
[ 6926.7,  4406.6, 0.0],
[ 4362.7,  4679.5, 0.0],
[ 2766.0,  2721.3, 0.0],
[ 6413.6,  3749.3, 0.0],
[10391.7,  4271.9, 0.0],
[ 9868.5,  4617.1, 0.0],
[10978.9,  5877.9, 0.0],
[10490.1,  6281.6, 0.0],
[13261.2,  5429.5, 0.0],
[ 6030.6, 11107.0, 0.0],
[ 4871.8, 10833.3, 0.0],
[ 3306.0, 11266.7, 0.0],
[ 2519.2,  9653.7, 0.0],
[ 7537.3,  8304.5, 0.0],
[ 6932.5,  8032.2, 0.0],
[ 7397.6,  6480.8, 0.0]
];

DZMSRoadBlocksNapf = [
[15556.4, 14138.8, 0.0],
[14960.9, 13533.0, 0.0],
[15631.9, 13109.7, 0.0],
[16162.1, 13404.1, 0.0],
[11629.7, 14876.7, 0.0],
[10529.6, 16150.1, 0.0],
[ 9306.7, 16477.2, 0.0],
[ 8153.4, 15978.5, 0.0],
[ 6521.6, 16032.0, 0.0],
[ 5891.8, 16314.4, 0.0],
[ 5340.1, 15045.5, 0.0],
[ 5784.3, 14093.8, 0.0],
[ 4508.2, 13618.5, 0.0],
[ 3971.8, 13154.7, 0.0],
[ 4682.4, 12486.2, 0.0],
[ 6468.3, 10284.3, 0.0],
[ 8507.8, 10747.6, 0.0],
[11158.4, 10617.4, 0.0],
[13173.9, 12094.8, 0.0],
[13237.3, 11257.1, 0.0],
[14920.4, 10712.3, 0.0],
[15872.2,  9335.0, 0.0],
[13946.9,  6822.8, 0.0],
[12961.4,  5964.2, 0.0],
[15879.4,  5772.3, 0.0],
[16544.4,  3801.0, 0.0],
[15830.0,  2785.3, 0.0],
[12361.0,  3042.6, 0.0],
[ 9591.4,  3200.2, 0.0],
[ 9170.9,  5277.5, 0.0],
[ 8206.3,  5103.4, 0.0],
[ 6118.3,  5074.9, 0.0],
[ 3221.9,  6968.4, 0.0],
[ 3765.5,  7872.3, 0.0],
[ 7052.1,  7070.6, 0.0],
[ 8985.5,  5403.7, 0.0],
[10302.3,  7259.1, 0.0],
[ 8180.3,  7890.6, 0.0],
[11828.8,  9556.2, 0.0],
[11662.3, 10327.2, 0.0],
[10963.5, 12845.7, 0.0],
[16497.4, 15183.2, 0.0],
[ 7563.9, 14077.7, 0.0],
[ 8077.4,  7034.7, 0.0]
];

DZMSRoadBlocksTaviBase = [
[11270.4,  1072.0, 0.0],
[11515.8,  1252.6, 0.0],
[11715.9,  1194.5, 0.0],
[11410.6,   591.5, 0.0],
[10397.1,   972.8, 0.0],
[ 8855.0,  2280.9, 0.0],
[ 7434.4,  4709.2, 0.0],
[ 3692.2,  6812.7, 0.0],
[ 3641.7,  7494.2, 0.0],
[ 2746.6,  7296.1, 0.0],
[ 4456.8,  7964.2, 0.0],
[ 5521.1,  8969.4, 0.0],
[ 7675.1,  9449.1, 0.0],
[ 9874.5,  7505.4, 0.0],
[13462.2,  8595.3, 0.0],
[ 9229.9,  7073.2, 0.0],
[ 7949.3,  7922.3, 0.0],
[ 7635.7,  7388.2, 0.0],
[ 8236.0,  6083.3, 0.0],
[10570.0,  6550.8, 0.0],
[ 8870.1,  8326.0, 0.0],
[14217.6,  7950.5, 0.0],
[13735.3,  8323.8, 0.0],
[15483.1,  9012.1, 0.0],
[16918.7,  8218.7, 0.0],
[17204.9,  7155.3, 0.0],
[17503.7,  5636.8, 0.0],
[14569.1, 10423.6, 0.0],
[14480.9, 11434.1, 0.0],
[14384.3, 11708.2, 0.0],
[14137.3, 11970.6, 0.0],
[13952.4, 12399.2, 0.0],
[12885.7, 12455.0, 0.0],
[12701.9, 12147.7, 0.0],
[13154.6, 12782.6, 0.0],
[13717.8, 13338.5, 0.0],
[13028.5, 14561.4, 0.0],
[12602.2, 14539.6, 0.0],
[12006.9, 15370.5, 0.0],
[11638.2, 15424.7, 0.0],
[12417.3, 15445.5, 0.0],
[10920.4, 17468.6, 0.0],
[10813.6, 17439.6, 0.0],
[10107.1, 18081.8, 0.0],
[10138.2, 19090.0, 0.0],
[11429.9, 18146.4, 0.0],
[13025.5, 19307.8, 0.0],
[15004.8, 18180.7, 0.0],
[15334.2, 16420.1, 0.0],
[15094.6, 15884.8, 0.0],
[16255.7, 14606.4, 0.0],
[15828.8, 14259.2, 0.0],
[16218.8, 14034.1, 0.0],
[16240.4, 13367.1, 0.0],
[16542.0, 12631.7, 0.0],
[16262.0, 11675.7, 0.0],
[15682.0, 10119.1, 0.0],
[14931.6,  9880.9, 0.0],
[15038.3, 10068.1, 0.0]
];
DZMSRoadBlocksTaviOrigins = [
[ 8589.2, 10515.7, 0.0],
[ 7578.2, 11872.0, 0.0],
[ 6800.3, 12830.8, 0.0],
[ 6278.8, 13378.2, 0.0],
[ 5735.7, 14115.1, 0.0],
[ 5497.9, 14637.3, 0.0],
[ 4862.6, 14668.8, 0.0],
[ 4729.0, 15933.5, 0.0],
[ 3873.0, 17501.1, 0.0],
[ 4357.1, 17980.5, 0.0],
[ 2482.9, 17681.9, 0.0],
[ 1353.7, 17512.2, 0.0],
[ 4953.7, 17724.5, 0.0],
[ 5921.1, 17533.0, 0.0],
[ 5812.9, 18789.7, 0.0]
];

DZMSRoadBlocksTakistan = [
[ 4081.5, 11922.6, 0.0],
[ 4671.5, 11623.6, 0.0],
[ 4665.5, 11535.6, 0.0],
[ 4106.5, 10913.6, 0.0],
[ 3487.5, 10199.6, 0.0],
[ 4293.5,  9894.6, 0.0],
[ 3731.5,  8878.6, 0.0],
[ 5791.5,  8273.6, 0.0],
[ 5856.5,  6684.6, 0.0],
[ 4016.5,  5645.6, 0.0],
[ 2034.5,  5547.6, 0.0],
[ 2483.5,  7794.6, 0.0],
[ 3399.5,  3988.6, 0.0],
[ 3874.5,  3428.6, 0.0],
[ 7468.5,  2415.6, 0.0],
[ 7635.5,  2885.6, 0.0],
[ 8443.5,  3797.6, 0.0],
[ 9367.5,  4590.6, 0.0],
[ 8984.5,  5479.6, 0.0],
[ 9955.5,  6443.6, 0.0],
[ 9035.5,  6837.6, 0.0],
[ 8699.5,  7328.6, 0.0],
[ 6300.5,  7329.6, 0.0],
[ 5967.5,  7769.6, 0.0],
[ 5714.5,  8479.6, 0.0],
[ 5841.5,  8976.6, 0.0],
[ 4665.5,  9600.6, 0.0],
[ 7397.6,  6480.8, 0.0]
];

DZMSRoadBlocksMiroslavl = [
[ 5952.0,  3757.0, 0.0],
[ 4623.0,  3771.0, 0.0],
[ 3310.0,  2288.0, 0.0],
[11115.0,  6510.0, 0.0],
[ 6610.0, 11719.0, 0.0],
[ 5991.0,  9268.0, 0.0],
[ 9372.0,  9786.0, 0.0],
[ 7994.0,  9403.0, 0.0],
[10429.0,  3608.0, 0.0],
[11882.0,  4754.0, 0.0],
[ 6973.3,  3412.5, 0.0],
[ 6015.5,  3280.3, 0.0],
[ 7210.7,  5641.9, 0.0],
[ 3106.2,  6492.9, 0.0],
[ 4827.5,  8157.1, 0.0],
[ 8728.8,  7799.4, 0.0],
[ 2591.6,  9999.3, 0.0],
[ 1403.2,  9220.1, 0.0],
[ 1860.2,  6227.8, 0.0]
];

// choose/uncomment map specific coordinates
// Chernarus:
DZMSHotSpotsStatLocs = DZMSHotSpotsCherno; 
DZMSRoadBlocksStatLocs = DZMSRoadBlocksCherno;
// Napf:
// DZMSHotSpotsStatLocs = DZMSHotSpotsNapf;   
// DZMSRoadBlocksStatLocs = DZMSRoadBlocksNapf;
// Taviana:
// DZMSHotSpotsStatLocs = DZMSHotSpotsTaviBase; 
// DZMSRoadBlocksStatLocs = DZMSRoadBlocksTaviBase;
// Taviana / Origins
// DZMSHotSpotsStatLocs = DZMSHotSpotsTaviBase + DZMSHotSpotsTaviOrigins;
// DZMSRoadBlocksStatLocs = DZMSRoadBlocksTaviBase + DZMSRoadBlocksTaviOrigins;
// Takistan: thanks to Smitty Jagerman of KillinZedz 
// DZMSHotSpotsStatLocs = DZMSHotSpotsTakistan; 
// DZMSRoadBlocksStatLocs = DZMSRoadBlocksTakistan;
// Miroslavl: thanks to NigeyS
// DZMSHotSpotsStatLocs = DZMSHotSpotsMiroslavl; 
// DZMSRoadBlocksStatLocs = DZMSRoadBlocksMiroslavl;

// how many hotspots per mission
DZMSHotSpotsNumber = 10;

// show all hotspots on map? (for debug purposes, only)
DZMSHotSpotsMapDebug = false;

// uncertainty of map marker positions
DZMSHotSpotsRandR = 50;

// health handling: <0: DZAI unithealth, 0:Arma standard, >0: scaled to 8000
DZMSHotSpotsAIBlood = 0;

///////////////////////////////////////////////////////////////////////////////////////////////////////////
// Do you want vehicles from missions to save to the Database? (this means they will stay after a restart)
// If False, vehicles will disappear on restart. It will warn a player who gets inside of a vehicle.
// This is experimental, and off by default in this version.
DZMSHotSpotsSaveVehicles = false;

/////////////////////////////////////////////////////////////////////////////////////////////
// These are arrays of vehicle classnames for the missions.
// Adjust to your liking.

//Armed Choppers (Huey)
DZMSHotSpotsChoppers = [
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
DZMSHotSpotsSmallVic = [
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
DZMSHotSpotsLargeVic = [
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

//Armed Vehicles for minor roadblock missions
DZMSHotSpotsArmedVic = ["HMMWV_Armored","LandRover_MG_TK_EP1","UAZ_MG_TK_EP1"];

/*///////////////////////////////////////////////////////////////////////////////////////////
There are two types of missions that run simultaneously on a the server.
The two types are Major and Minor missions.

Major missions have a higher AI count, but also have more crates to loot.
Minor missions have less AI than Major missions, but have crates that reflect that.

Below is the array of mission file names and the minimum and maximum times they run.
Do not edit the Arrays unless you know what you are doing.
*/
DZMSHotSpotsMajorArray = ["HSMoney","HSSupply","HSRareAmmo","HSVehicleAmmo","HSLauncher"];
DZMSHotSpotsMinorArray = ["RBFort","RBSandBags","RBTankTraps","RBVehicleArmed"];

/////////////////////////////////////////////////////////////////////////////////////////////
// The Minumum time in seconds before a major mission will run.
// At least this much time will pass between major missions. Default = 650 (10.8 Minutes)
DZMSHotSpotsMajorMin = 120;
//DZMSHotSpotsMajorMin = 10;

// Maximum time in seconds before a major mission will run.
// A major mission will always run before this much time has passed. Default = 2000 (33.33 Minutes)
DZMSHotSpotsMajorMax = 600;
//DZMSHotSpotsMajorMax = 10;

// Time in seconds before a minor mission will run.
// At least this much time will pass between minor missions. Default = 600 (10 Minutes)
DZMSHotSpotsMinorMin = 300;
//DZMSHotSpotsMinorMin = 30;

// Maximum time in seconds before a minor mission will run.
// A minor mission will always run before this much time has passed. Default = 990 (16.5 Minutes)
DZMSHotSpotsMinorMax = 300;
//DZMSHotSpotsMinorMin = 30;

// Blacklist Zone Array -- missions will not spawn in these areas
// format: [[x,y,z],radius]
// Ex: [[06325,07807,0],300] //Starry Sobor
DZMSHotSpotsBlacklistZones = [
	[[0,0,0],50]
];

/*=============================================================================================*/
// Do Not Edit Below This Line
/*=============================================================================================*/
DZMSHotSpotsVersion = "1.1FIN";
