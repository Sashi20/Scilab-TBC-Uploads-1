clc; clear;
// Example 2.16
// Page 41
// Given data
W=3; //width of channel, ft
D=1.5; // depth of water, ft
slope=0.5; //ft per 100 ft
//estimation
A=W*D; // flow area, ft^2
P=D+W+D; // wetted perimeter, ft
R=A/P; // hydrolic radius, ft
S=slope/100; // unitless quantity
Q=1.5/0.013*A*R^(2/3)*S^(1/2); // from Manning's formula
printf('The flow rate in pipe Q = %f cfs',Q)
clear




