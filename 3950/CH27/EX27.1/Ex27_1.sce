// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 27.1 - Electroplating
// Given that
A = 125*100 // Surface area of steel part in mm^2
C = 3.42*10^-2 // Plating constant from Table 27.1
E = 0.95 // Cathode efficiency for nickel from Table 27.1
I = 12 // Current
t = 15 // time during which current is applied
V = E*C*I*t*60
d = V/A
printf('The average plating thickness = %.3f mm\n',d)
