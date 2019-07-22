clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 10.2
// Given that
R_a = 0.001 // Surface finish in micro meter
f = 0.1 // Feed in mm/rev
r_n = (0.0321*f^2)/R_a  // Average Geometric roughness from Eq.10.10
printf("The Average Geometric roughness = %.3f mm",r_n)
