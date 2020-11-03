// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 25.2 - Electric Discharge Machining
// Given that
K = 664 // Constant of Proportionality
I = 25 // Discharge current in amps
T_m = 1083 // Melting temperature of copper from Table 4.1
R_mr = (K*I)/((T_m)^1.23) // Metal removal rate
printf('The Metal removal rate = %.2f mm^3/s',R_mr)
