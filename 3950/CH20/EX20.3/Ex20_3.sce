// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 20.3 - Estimating Friction Angle
// Given that
alpha = 10 // Rake angle of tool
t_o = 0.50 // Chip thickness before cut in mm
t_c = 1.125 // Chip thickness after cut in mm
r = t_o/t_c // Chip thickness ratio
phi = atand(((r*cosd(alpha))/(1-(r*sind(alpha)))))
beta = (2*(45))+alpha - (2*phi)
mu = tand(beta)
printf('The Friction angle = %.1f degrees \n The Coefficient of friction = %.2f \n',beta,mu)
// The answers vary due to round off error
