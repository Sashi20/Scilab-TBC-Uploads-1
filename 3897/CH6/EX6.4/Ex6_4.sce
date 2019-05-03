clc; clear;
// Example 6.4
// Page 158
// Given data
TD=4; // detention time, hour
Q=6; // average flow rate, ML/d
Vo=20; // maximum overflow rate, m^3/m/^2-d
//estimation
Q=Q/24; // average flow rate, ML/h
V=Q*TD; // required volume, ML, eq 6-1
V=V*10^6; // required volume, L
V=V/1000; // required volume, m^3
Q=6*10^6/10^3; // average flow rate, m^3/d
As=Q/Vo; // surface area, m^2, eq 6-2
D=sqrt(4*As/%pi); // dia of tank, m
SWD=V/As; // SWD of tank, m
printf('The required dia of tank = %f m\n',D)
printf('The SWD of tank = %f m',SWD)
clear




