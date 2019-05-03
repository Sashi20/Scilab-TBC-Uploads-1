clc; clear;
// Example 10.7
// Page 298
// Given data
Q=800000; // flow, gpd
BOD=125; // BOD, ppm
F_M=0.4; // food-to-microorganism (F/M) ratio
MLSS=1800; // MLSS conc, ppm
SWD=15; // side wwater depth, ft
//estimation
V=(Q*BOD)/(F_M*MLSS); // volume, gal, eq 10-5
V=V/7.5; // volume, ft^3;
W=(V/(3*SWD))^(1/2);
L=3*W; // required length of tank, ft
printf('The required length of tank = %f ft',L)
clear




