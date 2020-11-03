// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 10.3 - Riser design using Chvorinov's rule
// Given that
l = 7.5 // Length in cm
w = 12.5 // width in cm
t = 2.0 // thickness in cm
n = 2 // Exponent usually taken as 2
T_ts = 1.6 // Total solidification time in min
T_tsd = 2 // Next riser must be designed so that its total solidification time in min
V = l*w*t // Volume in cm^3
A = (2*((l*w)+(l*t)+(w*t))) 
C_m = T_ts/((V/A)^n) // Mold constant in min/cm^2
// Since D/H = 1.0, D = H 
// V = %pi*D^3/4
// Thus V/A ratio = D/6.
D = sqrt(n/((C_m/6^2)))
H = D // Since H = D
printf('The Dimensions of riser = %.1f cm \n The height of the riser = %.1f cm',D,H )
