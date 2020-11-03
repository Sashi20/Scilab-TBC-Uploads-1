// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 21.3 - Machining Time in Peripheral Milling
// Given that
v = 0.50 // Cutting speed
D = 65 // Diameter of milling cutter
n_t = 4 // teeth on milling cutter
f = 0.24 // Feed per tooth
t_i = 56 // Thickness intial
t_f = 50 // Thickness final
w = 60 // width
L = 320
d = t_i-t_f // Depth of cut
N = (v*1000)/(%pi*D)
f_r = N*n_t*f
A = sqrt(d*(D-d)) // Approach distance
T_m = (L + A) / f_r
R_mr = w*d*f_r
printf('The machining time = %.1f s\n Material removal rate = %.0f mm^3/s',T_m,R_mr)
// The answers vary due to round off error
