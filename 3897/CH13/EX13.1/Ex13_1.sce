clc; clear;
// Example 13.1
// Page 440
// Given data
cs=0.12; // hourly ozone concentration, mg/L
T=25; // tempreature, degree celcius
P=1; // pressure, atm
AT=48; //atomic weight of ozone
//estimation 
T=T+273; //tempreature in kelvin
CD=(273*cs*AT*P)/(22.4*T); // Ozone concentration in mg/m^3 (from equation 13.1)
CD=CD*1000; //  Ozone concentration in microg/m^3
printf('ozone concentration = %f microgram/m^3',CD)
clear




