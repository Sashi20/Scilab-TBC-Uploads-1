// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 38.2  - Automated Transfer line
// Given that 
p = 0.01 // Probability of station failure
n = 20  // Number of stations
T_c = 1
T_b = 10 // Breakdown time
F = p*n
T_p= T_c + F*T_b
R_p = 60/T_p 
R_c = 60/T_c
E = (T_c/T_p)*100
printf('Average Production rate = %.0f pc/hr\nEfficiency = %.1f\n',R_p,E) 
