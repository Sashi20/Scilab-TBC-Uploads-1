// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 10.2 - Pouring Calculations
// Given that
g = 981 // acceleration gravity constant
h = 20 // Mold sprue height in cm
v = sqrt(2*g*h)  // Velocity of the flowing metal at the base of the sprue in cm/s
a = 2.5  // cross-sectional area of base in cm^2
V = 1560 // Volume of mold cavity in cm^3
Q = a*v  // Volumetric flow rate in cm^3/s
T_mf = V/Q // Mold filling time in sec
printf('Velocity of the flowing metal at the base of the sprue = %.1f cm/s \n Volumetric flow rate = %.0f cm^3/s \n Mold filling time = %.1f sec',v,Q,T_mf)
