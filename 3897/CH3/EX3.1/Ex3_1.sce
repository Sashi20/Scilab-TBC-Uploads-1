clc; clear;
// Example 3.1
// Page 61
// Given data
depth=25.0; // rainfall depth in mm
A=2.5; // Area in ha
//estimation
depth=depth/1000; // rainfall depth in m 
A=A*10000; // area in m^2
V=depth*A; // total volume of water, from equation 3-1
printf('The total volume of water V = %f m^3',V)
clear




