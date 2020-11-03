// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 33.1 - Number of Chips on Water
// Given that
D_w = 190 // Diameter of the processable area of the wafer
L_c = 18 // Side dimension of the chip
n_c = 0.34*(D_w/L_c)^2.25 
printf('IC chips = %.0f chips',n_c)
