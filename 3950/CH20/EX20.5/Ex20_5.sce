// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 20.5 - Cutting Temperature
// Given that
row = 3
C = 1000
t_o = 0.50  // Data from the previous example 20.1
w = 3 // Data from the previous example 20.2
F_c = 1559 // Data from the previous example 20.2
v = 100 // Cutting speed
// In the textbook it was 1557. 
K = 50
P_c = (F_c*v)
U = P_c/(v*10^3*t_o*w)
v_c = (v*1000)/60 
delta_T = ((0.4*U)/(row*10^-6*C))*(((v_c*t_o)/K)^0.333)
printf('The mean temperature = %.0f C',delta_T)
// The answers vary due to round off error
