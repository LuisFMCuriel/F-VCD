% oLaF - a flexible 3D reconstruction framework for light field microscopy
% Copyright (c)2017-2020 Anca Stefanoiu 

function MLARRAY = FLFM_mlaTransmittance(Resolution, ulensPattern)

%% Compute the ML array as a grid of phase/amplitude masks corresponding to mlens
ylength = length(Resolution.yspace);
xlength = length(Resolution.xspace);

% activate lenslet centers -> set to 1

MLcenters = zeros(ylength, xlength);

center=ceil(size(MLcenters,1)/2);
d1=0;
d=size(ulensPattern,1);

%MLcenters(center-ceil((d+d1)/2/sqrt(3)),center-ceil((d+d1)/2))=1;
%MLcenters(center-ceil((d+d1)/2/sqrt(3)),center+ceil((d+d1)/2))=1;
% MLcenters(center,center)=1;
%MLcenters(center+ceil((d+d1)/sqrt(3)),center)=1;

MLcenters(1094,2164) = 1;
MLcenters(1092,2382) = 1;
MLcenters(1280,2274) = 1;
MLcenters(1282,2060) = 1;
MLcenters(1098,1950) = 1;
MLcenters(910,2058) = 1;
MLcenters(914,2278) = 1;
MLcenters(1090,2596) = 1;
MLcenters(1280,2492) = 1;
MLcenters(1466,2382) = 1;
MLcenters(1468,2168) = 1;
MLcenters(1470,1954) = 1;
MLcenters(1286,1842) = 1;
MLcenters(1100,1734) = 1;
MLcenters(912,1838) = 1;
MLcenters(724,1946) = 1;
MLcenters(722,2160) = 1;
MLcenters(720,2378) = 1;
MLcenters(906,2486) = 1;
MLcenters(1088,2810) = 1;
MLcenters(1276,2704) = 1;
MLcenters(1462,2598) = 1;
MLcenters(1650,2492) = 1;
MLcenters(1654,2278) = 1;
MLcenters(1656,2064) = 1;
MLcenters(1658,1848) = 1;
MLcenters(1472,1738) = 1;
MLcenters(1288,1628) = 1;
MLcenters(1102,1520) = 1;
MLcenters(914,1624) = 1;
MLcenters(726,1730) = 1;
MLcenters(538,1836) = 1;
MLcenters(536,2052) = 1;
MLcenters(534,2268) = 1;
MLcenters(532,2482) = 1;
MLcenters(718,2592) = 1;
MLcenters(902,2700) = 1;
MLcenters(1086,3022) = 1;
MLcenters(1274,2918) = 1;
MLcenters(1460,2814) = 1;
MLcenters(1648,2708) = 1;
MLcenters(1834,2602) = 1;
MLcenters(1838,2386) = 1;
MLcenters(1840,2172) = 1;
MLcenters(1844,1956) = 1;
MLcenters(1846,1740) = 1;
MLcenters(1658,1634) = 1;
MLcenters(1474,1524) = 1;
MLcenters(1290,1412) = 1;
MLcenters(1104,1304) = 1;
MLcenters(916,1408) = 1;
MLcenters(730,1514) = 1;
MLcenters(540,1620) = 1;
MLcenters(354,1726) = 1;
MLcenters(352,1942) = 1;
MLcenters(350,2158) = 1;
MLcenters(346,2372) = 1;
MLcenters(344,2586) = 1;
MLcenters(530,2698) = 1;
MLcenters(716,2804) = 1;
MLcenters(902,2914) = 1;
MLcenters(1082,3238) = 1;
MLcenters(1272,3132) = 1;
MLcenters(1458,3028) = 1;
MLcenters(1644,2922) = 1;
MLcenters(1832,2818) = 1;
MLcenters(2018,2710) = 1;
MLcenters(2022,2496) = 1;
MLcenters(2024,2282) = 1;
MLcenters(2026,2068) = 1;
MLcenters(2028,1852) = 1;
MLcenters(2032,1638) = 1;
MLcenters(1848,1528) = 1;
MLcenters(1662,1418) = 1;
MLcenters(1478,1308) = 1;
MLcenters(1292,1196) = 1;
MLcenters(1108,1088) = 1;
MLcenters(920,1192) = 1;
MLcenters(730,1300) = 1;
MLcenters(544,1406) = 1;
MLcenters(356,1510) = 1;
MLcenters(168,1616) = 1;
MLcenters(166,1832) = 1;
MLcenters(164,2046) = 1;
MLcenters(162,2262) = 1;
MLcenters(160,2478) = 1;
MLcenters(160,2694) = 1;
MLcenters(344,2800) = 1;
MLcenters(530,2908) = 1;
MLcenters(714,3022) = 1;
MLcenters(900,3130) = 1;

% apply the mlens pattern at every ml center
MLARRAY  = conv2(MLcenters, ulensPattern, 'same');

