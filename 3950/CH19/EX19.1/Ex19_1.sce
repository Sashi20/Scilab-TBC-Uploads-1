// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 19.1 - Blanking clearance and force
// Given that
b = 3.2
D_b = 150 // Die opening diameter in mm
A_c = 0.075 // From Table 19.1 the clearance allowance for half-hard cold rolled steel
F_s = 310 // Shear strength
c = A_c*b
d_p = D_b - 2*c // Punch Diameter in mm
L = %pi*D_b // Length of the cut edge
F = F_s*L*b
printf('The appropriate punch and die diameter = %.2f & %d \n The Blanking force = %f N',d_p,D_b,F)
