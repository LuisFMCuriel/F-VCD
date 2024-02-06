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

MLcenters(2164,1094) = 1;
MLcenters(2382,1092) = 1;
%{
MLcenters(2274,1280) = 1;
MLcenters(2060,1282) = 1;
MLcenters(1950,1098) = 1;
MLcenters(2058,910) = 1;
MLcenters(2278,914) = 1;
MLcenters(2596,1090) = 1;
MLcenters(2492,1280) = 1;
MLcenters(2382,1466) = 1;
MLcenters(2168,1468) = 1;
MLcenters(1954,1470) = 1;
MLcenters(1842,1286) = 1;
MLcenters(1734,1100) = 1;
MLcenters(1838,912) = 1;
MLcenters(1946,724) = 1;
MLcenters(2160,722) = 1;
MLcenters(2378,720) = 1;
MLcenters(2486,906) = 1;
MLcenters(2810,1088) = 1;
MLcenters(2704,1276) = 1;
MLcenters(2598,1462) = 1;
MLcenters(2492,1650) = 1;
MLcenters(2278,1654) = 1;
MLcenters(2064,1656) = 1;
MLcenters(1848,1658) = 1;
MLcenters(1738,1472) = 1;
MLcenters(1628,1288) = 1;
MLcenters(1520,1102) = 1;
MLcenters(1624,914) = 1;
MLcenters(1730,726) = 1;
MLcenters(1836,538) = 1;
MLcenters(2052,536) = 1;
MLcenters(2268,534) = 1;
MLcenters(2482,532) = 1;
MLcenters(2592,718) = 1;
MLcenters(2700,902) = 1;
MLcenters(3022,1086) = 1;
MLcenters(2918,1274) = 1;
MLcenters(2814,1460) = 1;
MLcenters(2708,1648) = 1;
MLcenters(2602,1834) = 1;
MLcenters(2386,1838) = 1;
MLcenters(2172,1840) = 1;
MLcenters(1956,1844) = 1;
MLcenters(1740,1846) = 1;
MLcenters(1634,1658) = 1;
MLcenters(1524,1474) = 1;
MLcenters(1412,1290) = 1;
MLcenters(1304,1104) = 1;
MLcenters(1408,916) = 1;
MLcenters(1514,730) = 1;
MLcenters(1620,540) = 1;
MLcenters(1726,354) = 1;
MLcenters(1942,352) = 1;
MLcenters(2158,350) = 1;
MLcenters(2372,346) = 1;
MLcenters(2586,344) = 1;
MLcenters(2698,530) = 1;
MLcenters(2804,716) = 1;
MLcenters(2914,902) = 1;
MLcenters(3238,1082) = 1;
MLcenters(3132,1272) = 1;
MLcenters(3028,1458) = 1;
MLcenters(2922,1644) = 1;
MLcenters(2818,1832) = 1;
MLcenters(2710,2018) = 1;
MLcenters(2496,2022) = 1;
MLcenters(2282,2024) = 1;
MLcenters(2068,2026) = 1;
MLcenters(1852,2028) = 1;
MLcenters(1638,2032) = 1;
MLcenters(1528,1848) = 1;
MLcenters(1418,1662) = 1;
MLcenters(1308,1478) = 1;
MLcenters(1196,1292) = 1;
MLcenters(1088,1108) = 1;
MLcenters(1192,920) = 1;
MLcenters(1300,730) = 1;
MLcenters(1406,544) = 1;
MLcenters(1510,356) = 1;
MLcenters(1616,168) = 1;
MLcenters(1832,166) = 1;
MLcenters(2046,164) = 1;
MLcenters(2262,162) = 1;
MLcenters(2478,160) = 1;
MLcenters(2694,160) = 1;
MLcenters(2800,344) = 1;
MLcenters(2908,530) = 1;
MLcenters(3022,714) = 1;
MLcenters(3130,900) = 1;
%}
% apply the mlens pattern at every ml center
MLARRAY  = conv2(MLcenters, ulensPattern, 'same');

