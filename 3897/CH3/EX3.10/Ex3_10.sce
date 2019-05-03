clc; clear;
// Example 3.10
// Page 80
// Given data
S=1.0; // slope of water table over a distance of 200 m, in m
K=0.1; // coefficient of permeability, mm/s
//estimation
S=S/200; // slope of water table
V=K*S; // velocity of groundwater flow in aquifer, mm/s
printf('The velocity of groundwater flow in aquifer V = %f mm/s',V)
clear




