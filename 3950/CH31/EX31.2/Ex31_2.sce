// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 31.2 - Expansion fit
// Given that
alpha = 12*10^-6 // Thermal expansion for steel from Table 4.1
D_2 = 30 // Inner diameter in mm
D_1 = 30.015 // Shaft diameter in mm 
T_1 = 20 // Room Temperature in C
c = 0.03 // Clearance
T_2 = (((D_2-c) - D_1)/(alpha*D_1))+T_1
E = 209*10^3 // Modulus of elasticity in MPa  from Table 3.1
D_c = 50 // Outer diameter of the collar 
D_p = 30.025 // Pin diameter 
i = 0.015
P_f = (E*i*(D_c^2 - D_p^2))/(D_p*D_c^2)
Max_sigma_e = (2*P_f*D_c^2)/(D_c^2 - D_p^2)
printf('The Temperature to which the shaft must be cooled for assembly = %.1f C \n The radial pressure at room temperature after assembly = %.1f MPa \n The maximuum effective stress on the collar = %.0f MPa',T_2,P_f,Max_sigma_e)
