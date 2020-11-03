// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 5.2 - Sine bar measurement
// Given that
L = 200 // Length in mm
H = 40.38 // Gage blocks are stacked to a height in mm
A = asind(H/L) // Angle of interest in degrees
printf('The Angle of interest = %.2f degrees',A)
