clc; clear;
// Example 2.11
// Page 36
// Given data
D1=1; // diameter at section 1 in ft
D2=0.333; // diameter at section 2 in ft
Q1=2.0; // flow rate at section 1 in cfs
Q2=2.0; // flow rate at section 2 in cdf
P1=100; // pressure at section 1, psi
// estimation
A1=%pi*(D1)^2/4; // flow area at section 1 in ft^2
A2=%pi*(D2)^2/4; // flow area at section 2 in ft^2
V1=Q1/A1; // velocity at section 1, ft/s
V2=Q2/A2; // vel at section 2, ft/s
P1=100*144; // pressure at section 1, lb/ft^2
P2=((P1/62.4)+(V1^2/(2*32.2))-(V2^2/(2*32.2)))*(62.4/144); // pressure at section 2, psi, from equation 2-8b
printf('The pressure at section 2 = %f psi',P2)
clear


