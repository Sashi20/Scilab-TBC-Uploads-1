clc; clear;
// Example 6.7
// Page 167
// Given data
T=12; // backwash time, min
Q_backwash=10; // flow rate for backwash, L/m^2
Q=6; // flow rate, ML/d
A=25; // surface area, m^2
//estimation
V=Q_backwash*A*T*60/10^3; // volume of water used in backwash, m^3
Q=Q*10^3; // flow rate in m^3
P=V/Q*100;
printf('The percentage of water used in backwash = %f percent',P)
clear




