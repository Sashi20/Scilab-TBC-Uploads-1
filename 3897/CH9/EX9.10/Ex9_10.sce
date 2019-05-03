clc; clear;
// Example 9.10
// Page 271
// Given data
Tc=15; // time of concentration, min
Pin_5=14000; //peak inflow for 5-year storm, m^3/h
Pout_5=4400; // peak outflow for 5-year storm, m^3/h
Pin_100=30000; //peak inflow for 100-year storm, m^3/h
Pout_100=9400; // peak outflow for 100-year storm, m^3/h
D=2; // depth of water, m
//estimation
FF=Pout_5/Pin_5; // flow factor for 5-year storm
SF=1-FF; // storage factor
Tc=Tc/60; // time of concentration, hr
TRV=1.5*Tc*Pin_5; // total rainfall volume, m^3
SV=SF*TRV; // storage volume, m^3
A_5=SV/D; // basin area for 5-year storm, m^2
// for 100-year storm
FF=Pout_100/Pin_100; // flow factor for 100-year storm
SF=1-FF; // storage factor
TRV=1.5*Tc*Pin_100; // total rainfall volume, m^3
SV=SF*TRV; // storage volume, m^3
A_100=SV/D; // basin area for 100-year storm, m^2
printf('The basin area required for 5-year storm = %f m^2\n',A_5)
printf('The basin area required for 100-year storm = %f m^2',A_100)
clear
