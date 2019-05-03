clc; clear;
// Example 10.11
// Page 327
// Given data
S1=6; // sludge solids conc, percent
V1=300; // volume, m^3
V2=200, // volume after dewatering, m^3
//estimation
WC=100-S1; // water content of the sludge, percent
V1=V1*1000; // volume, L
M=S1*V1/100; //mass of sludge solids, kg of dry solids. from eq 10-7
V2=V2*1000; // volume after dewatering, L
S2=(M/V2)*100; // sludge solids conc after dewatering, percent solids, from eq 10-7
WC1=100-S2; // water content after dewatering, percent
printf('The water content = %f percent\n',WC)
printf('The mass of dry solids = %f kg of dry solids\n',M)
printf('The sludge solids conc after dewatering = %f percent\n',S2)
printf('The water content dewatering = %f percent\n',WC1)
clear




