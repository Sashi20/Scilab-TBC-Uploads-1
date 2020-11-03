// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 21.1 - Machining Time in Turning
// Given that
v = 2000 // Cutting speed
D_o = 120 // Work Diameter
L = 450  // Length of the workpiece in mm
f = 0.25 // feed
d = 2.2  // Depth of cut in mm
T_m = (%pi*D_o*L)/(f*v) // Cutting time in min
R_mr = v*f*d  // Material removal rate in mm^3/s
printf('The Cutting time = %.1f s\nMaterial Removal Rate = %.0f mm^3/s',T_m,R_mr)
