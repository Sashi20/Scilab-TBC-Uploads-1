clc; clear;
// Example 2.24
// Page 45
// Given data
D=10; // the travel distance, m
T=20; // the travel time, second
w=1.5; // width of ditch, m
d=0.5; // depth of flow, m
// estimation
V=D/T; // flow velocity, m/s
A=w*d; // area of channel, m^2
Q=A*V; // the discharge, m^3/s
printf('The discharge Q = %f m^3/s\n',Q)
clear






