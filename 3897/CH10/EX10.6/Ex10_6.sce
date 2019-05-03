clc; clear;
// Example 10.6
// Page 297
// Given data
L=30; // length of sludge tank, m
W=10; // width of sludge tank, m
D=4; // depth of sludge tank, 3
P_in=200; // conc of BOD flowing in, mg/L
e2=35; // removal efficiency of primary treatmet, %
BOD=200; // BOD, mg/L
Q=4; // wastewater flow, ML/day
MLSS=2000; // MLSS conc, mg/L
//estimation
C1=((100-e2)*200)/100; // remaining BOD after primary treatment,mg/L
V=W*L*D; // volume of tank, m^3
V=V/10^3; // volume of tank, ML
F_M=(Q*C1)/(MLSS*V); // F/M ratio, eq 10-5
printf('The food-to-microorganism (F/M) ratio = %f',F_M)
clear




