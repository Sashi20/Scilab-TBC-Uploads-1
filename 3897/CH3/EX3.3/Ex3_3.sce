clc; clear;
// Example 3.3
// Page 62
// Given data
depth=4.0; // rainfall depth in inch
T=8.0; // duration of rainfall storm in h
A=120; // area , ac.
//estimation
I=depth/T; // rainfall intensity, inch/h
V=A*depth*(1/12); // volume of rain, acre-feet, from euqtion 3-1
V=V*43560; // volume of rain , ft^3
printf('The average rainfall intensity I = %f inch/h\n',I)
printf('The volume of rain V = %f ft^3',V)
clear




