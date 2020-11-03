// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 20.2 - Shear stress in Machining
// Given that
alpha = 10 // Rake angle of tool
t_o = 0.50 // Chip thickness before cut in mm
t_c = 1.125 // Chip thickness after cut in mm
r = t_o/t_c // Chip thickness ratio
F_c = 1559 // Cutting force in N
F_t = 1271 // Thrust force in N
w = 3  // Width of orthogonal cutting
phi = atand(((r*cosd(alpha))/(1-(r*sind(alpha)))))
F_s = (F_c*cosd(phi))-(F_t*sind(phi))
A_s = (t_o*w)/(sind(phi)) // Shear plane area
tau = F_s/A_s
printf('The shear strength of the work material = %.0f MPa',tau)
