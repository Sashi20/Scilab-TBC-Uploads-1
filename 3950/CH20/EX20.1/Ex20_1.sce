// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 20.1 - Orthogonal Cutting
// Given that
alpha = 10 // Rake angle of tool
t_o = 0.50 // Chip thickness before cut in mm
t_c = 1.125 // Chip thickness after cut in mm
r = t_o/t_c // Chip thickness ratio
phi = atand(((r*cosd(alpha))/(1-(r*sind(alpha)))))
r = tand(phi - alpha) + cotd(phi)
printf('The Shear plane angle = %.1f degrees \n The Shear strain = %.3f',phi,r)
// The answers may vary due to round off error
