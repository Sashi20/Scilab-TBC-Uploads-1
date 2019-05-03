clc; clear;
// Example 13.2
// Page 440
// Given data
CD=365; // sulfer dioxide concentration, microgram/m^3
T=25; // tempreature, degree celcius
P=1; // pressure, atm
AT=64; //atomic weight of osulfer dioxide

//estimation 
CD=365/1000; // sulfer dioxide concentration, in ppm
T=T+273; //tempreature in kelvin
cs=(CD*22.4*T)/(273*AT*P); // sulfer dioxide in ppm (from euation 13.1)
cs_perc=(cs/10^6)*100; //sulfer dioxide concentration in percentage
printf('sulfer dioxide concentration = %f ppm\n',cs)
printf('sulfer dioxide concentration = %f percentage',cs_perc)
clear




