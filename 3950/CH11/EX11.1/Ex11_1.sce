// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 11.1 - Buoyancy in Sand Casting
// Given that
v = 1875 // Sand core volume in cm^3
row = 1.6 // Density in g/cm^3
W_c = v*row  // Weight of the core
row_lead = 11.3 // From table 11.1
W_lead = row_lead * v
F_b = ((W_lead - W_c)*9.81)/1000 // Buoyancy Force in N so divided by 1000
printf('Buoyancy Force = %.1f N',F_b)
