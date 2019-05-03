clc; clear;
// Example 2.8
// Page 34
// Given data
Q=50; // flow in ML/d
V=3.0; // velocity in m/s
// estimation
Q=Q*10^6*(1/24)*(1/3600)*(1/1000); // flow in m^3/s
A=Q/V; // flow area in m^2
D=(4*A/%pi)^(1/2); // diameter of pipe in m
printf('The diameter of pipe = %f m\n',D)
clear


