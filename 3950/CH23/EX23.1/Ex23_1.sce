// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 23.1 - Machinability
// Given that
n1 = 0.28
n2 = 0.27
c1 = 350
c2 = 440
T = 60
V_60 = (c1/T^n1)
V1_60 =  (c2/T^n2)
MR = V1_60/V_60
printf('The Machinability rating = %.2f',MR)
