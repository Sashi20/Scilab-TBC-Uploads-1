// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 37.3  - Control resolution accuracy and repeatability
// Given that 
p = 5 // Pitch
r_g = 4 // Gear ratio
n_s = 48
L = 550
B = 16
sigma = 0.005
CR_1 = p/(n_s*r_g)
CR_2 = L/(2^B - 1)
CR = max(CR_1,CR_2)
accuracy = 0.5*CR + 3*sigma
repeatability = 3*sigma
printf('Control resolution = %.4f mm\nAccuracy = %.4f mm\nRepeatability = %.3f mm\n',CR,accuracy,repeatability)
