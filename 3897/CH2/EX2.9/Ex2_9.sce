clc; clear;
// Example 2.9
// Page 35
// Given data
Q=1000; // flow in L/s
A1=0.50; // area at section 1 in m^2
A2=0.25; // arear at section 2 in m^2
// estimation
Q=Q/1000; // flow in m^3/s
V1=Q/A1; // velocity at section 1 in m/s
V2=Q/A2; // velocity at section 2 in m/s
printf('Velocity at section 1= %f m/s\n',V1)
printf('Velocity at section 2 = %f m/s',V2)
clear


