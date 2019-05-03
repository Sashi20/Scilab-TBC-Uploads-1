clc; clear;
// Example 2.18
// Page 42
// Given data
D=450; // dia in mm
S=0.02; // unitless quantity
// estimation
D=D/1000; /// dia in m
A=%pi*(D)^2/4; // flow area, ft^2
R=D/4; // for circular pipe, Manning's formula
Q=1.0/0.013*A*R^(2/3)*S^(1/2); // from Manning's formula
V=Q/A; // flow velocity, ft/s
printf('The discharge capacity of the pipe = %f m^3/s\n',Q)
printf('The flow velocity in pipe V = %f ft/s',V)
clear





