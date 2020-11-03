// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 25.1 - Electrochemical Machining
// Given that
C = 3.44*10^-2 // Specific removal rate from Table 25.1
l = 10 // length of rectangular hole
b = 30 // breadth of rectangular hole
A = l*b // Area of electrode
t = 12 // thickness of plate
I = 1200 
eta = 0.95 // Expected efficiency
f_r = (C*I)/A // Feed rate at current lvel of 1200 Amps
f_r95 = f_r*eta // Actual Feed rate at 95% efficiency
T_m = (t/f_r95)/60
printf('Feed rate at 95 percentage efficiency = %.4f mm/s \n Time to machine through the 12-mm plate = %.2f min \n',f_r95,T_m)
