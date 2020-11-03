// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 21.2 - Machining Time in Drilling
// Given that
v = 0.5 // Cutting speed
D = 20 // Diameter of twist drill
f = 0.22 // feed
theta = 118 // Point angle
t = 15 // thickness of plate
N = (v*1000)/(%pi*D)
f_r = N*f
A = v*D*tand(90 - theta/2)
T_m = (t+A)/f_r
R_mr = (%pi*(D^2)*f_r)/4
printf('The machining time = %.0f s\n Material removal rate = %.1f mm^3/s',T_m,R_mr)
// Answer varies due to round off error
