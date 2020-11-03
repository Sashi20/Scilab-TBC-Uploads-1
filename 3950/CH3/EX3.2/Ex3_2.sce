// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 3.2 - True Stress and Strain
// Given that - Some of the data are from problem 3.1
F = 32000 // Force applied in N
Ao = 200 // Original area of cross of test speciment in MPa
s =  F/Ao // Yield Strength (Y), MPa
L = 50.2 // Length at any point during the elongation in mm
Lo = 50 // Gage length in mm
Lo_max = 57.7 // Maximum length before necking beigns in mm
Le = 0.002 // 
Fmax = 65000 // Maximum load in N
Lf = 63.5 // Speciemen length at fracture in m
A = (Ao*Lo)/Lo_max // Instantaneous area 
sigma = Fmax/A // True Stress in MPa
epilson = log(Lo_max/Lo) // True strain
printf('True Stress = %.0f MPa \n True Strain = %.3f \n',sigma,epilson)
