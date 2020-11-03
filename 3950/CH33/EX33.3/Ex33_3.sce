// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 33.3 - Yield in Water processing
// Given that
D_w = 190 // Diameter of the processable area of the wafer
L_c = 10 // Side dimension of the chip
D = 0.002
n_c = 0.34*(D_w/L_c)^2.25 
A = (%pi*D_w^2)/4
Y_m = 1/(1+((A/100)*D)) // Converting A in to Cm^2
number_good_chips = Y_m*n_c
printf('Number of Good Chips = %.2f chips',number_good_chips)
