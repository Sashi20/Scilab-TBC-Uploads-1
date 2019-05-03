clc; clear;
// Example 7.7
// Page 201
// Given data
Q=500; // discharge, L/s
TDH=25; // total dynamic head, m
P_in=150; // power to pump, kW
//estimation 
Q=Q/1000; // discharge, m^3/s
P_out=9.8*Q*TDH; // power, kW
e=(P_out/P_in)*100; // efficiency of pump, percent
printf('The pump efficiency = %f percent',e)
clear




