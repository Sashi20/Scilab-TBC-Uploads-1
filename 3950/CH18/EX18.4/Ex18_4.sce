// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 18.4 - Stress and Force in Wire drawing
// Given that
alpha = 15
D_o = 2.5 // Starting diameter in mm
D_f = 2 // Final diameter in mm
K = 205 // Strength coefficient in MPa
n = 0.20 // Strain hardening exponent
mew = 0.07 // Coefficient of friction at the work and die interface
D = (D_o+D_f)/2  // Average diameter of work during drawing in mm
L_c = (D_o-D_f)/(2*sind(alpha)) // Contact length of the work with the draw die
phi = 0.88 + 0.12 *(D/L_c)
A_o = (%pi/4)*D_o^2
A_f = (%pi/4)*D_f^2
epsilon = log(A_o/A_f)
Y_f = (K*epsilon^n)/(1+n) // Average flow stress
sigma_d = Y_f*(1+(mew/tand(alpha)))*phi*epsilon
F = A_f*sigma_d
printf('The Draw stress = %.0f MPa\n The Draw force = %.1f N\n',sigma_d,F)
// the answers may vary due to round off error
