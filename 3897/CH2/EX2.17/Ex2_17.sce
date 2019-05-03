clc; clear;
// Example 2.17
// Page 42
// Given data
D=12; // dia in inch
S=0.01; // unitless quantity
// estimation
D=D/12; /// dia in ft
A=%pi*(D)^2/4; // flow area, ft^2
R=D/4; // for circular pipe, Manning's formula
Q=1.5/0.013*A*R^(2/3)*S^(1/2); // from Manning's formula
V=Q/A; // flow velocity, ft/s
printf('The flow rate in pipe Q = %f cfs\n',Q)
printf('The flow velocity in pipe V = %f ft/s',V)
clear




