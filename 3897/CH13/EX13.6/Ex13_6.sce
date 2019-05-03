clc; clear;
// Example 13.6
// Page 452
// Given data

A1= 5000; // total collector plate area in square meter
F=150; // flow rate in cubic meter per second
V=0.1; // drift velocity in m/s
A2=7500; // area in m^2
A3= 10000; // area in m^2

//estimation 
E_5000=100*(1-(exp(-V*A1/F))); // efficieny corresponds to area 5000 square meter from equation 13.2 
E_7500=100*(1-exp(-V*A2/F)); // efficieny corresponds to area 7500 square meter
E_10000=100*(1-exp(-V*A3/F)); // efficieny corresponds to area 10000 square meter
printf('Efficiency corresponds to area 5000m^2 = %f percentage\n',E_5000)
printf('Efficiency corresponds to area 7500m^2 = %f percentage\n',E_7500)
printf('Efficiency corresponds to area 10000m^2 = %f percentage\n',E_10000)
clear




