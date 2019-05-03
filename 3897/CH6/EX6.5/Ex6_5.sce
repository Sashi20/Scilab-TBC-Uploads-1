clc; clear;
// Example 6.5
// Page 166
// Given data
Q=0.25; // flow rate, mgd
A=50; // surface area of tank, ft^2
//estimation
Q=Q*10^6*(1/24)*(1/60); // flow rate, gal/min
R=Q/A; // filtration rate, gpm/ft^2
V=R/7.5; // velocity of flow, ft/min
printf('The filtration rate = %f gpm/ft^2\n',R)
printf('The velocity of flow = %f ft/min',V)
clear




