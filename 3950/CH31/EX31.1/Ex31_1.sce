// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 31.1 - Threaded Fasteners
// Given that
C_t = 0.22 // Torque coefficient whose value typically ranges between 0.15 and 0.25
D = 8 // Nominal bolt diameter
F = 275 // Specified preloaded tension force in N
p = 1.25 
T  = C_t*D*F // Required Torque
A_s = (%pi/4)*((D - (0.9382*p))^2) // Area of the minor diameter
sigma = F/A_s
printf('The required torque = %.0f N-mm\n The stress on the bolt = %.2f MPa \n',T,sigma)
