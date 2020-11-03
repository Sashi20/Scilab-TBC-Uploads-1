// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 20.4 - Power Relations in machining
// Given that
t_o = 0.50  // Data from the previous example 20.1
w = 3 // Data from the previous example 20.2
F_c = 1559 // Data from the previous example 20.2
v = 100 // Cutting speed
// In the textbook it was 1557. 
P_c = (F_c*v)
U = P_c/(v*10^3*t_o*w)
printf('The cutting power = %.0f J/min \nThe specific energy = %.3f N/mm^3 \n',P_c,U)
