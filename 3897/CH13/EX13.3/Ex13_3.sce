clc; clear;
// Example 13.3
// Page 440
// Given data
cs_perc=2.2; // carbon monooxide percentage
T=82; // tempreature, degree celcius
P=1; // pressure, atm
AT=28; //atomic weight of osulfer dioxide

//estimation 
CD_ppm=cs_perc*1*(10^6)/100; // sulfer dioxide concentration, in ppm
T=T+273; //tempreature in kelvin
CD=(273*CD_ppm*AT*P)/(22.4*T); // carbon monooxide in mg/m^3 (from euation 13.1)
//CD_ppm=CD/1000 // carbon monooxide in ppm

printf('carbon monooxide concentration = %f ppm\n',CD_ppm)
printf('carbon monooxide concentration  = %f mg/m^3',CD)
clear




