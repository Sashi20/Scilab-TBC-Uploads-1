// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 3.1 - Engineering Stress and Strain
// Given that
F = 32000 // Force applied in N
Ao = 200 // Original area of cross of test speciment in MPa
Y =  F/Ao // Yield Strength (Y), MPa
L = 50.2 // Length at any point during the elongation in mm
Lo = 50 // Gage length in mm
Lo_max = 57.7 // Maximum length before necking beigns in mm
Le = 0.002 // 
Fmax = 65000 // Maximum load in N
Lf = 63.5 // Speciemen length at fracture in m
// The input consider in the textbook was wrong while solving the problem
e = (L-Lo)/(Lo - Le) // Engineering Strain in mm/min, 0.2% offset
E = Y/e  // Modulus of Elasticity, MPa
// the answer in the textbook was wrong
TS = Fmax/Ao  // Tensile strength in MPa
e_max_load = (Lo_max-Lo)/Lo // Engineering Strain  at maximum load in mm/min
EL = (Lf - Lo)/Lo // Elongation in %
// the answer in the textbook was wrong
printf('Yield Strength = %.0f MPa \n Modulus of Elasticity = %.0f MPa \n Tensile Strength = %.0f MPa\n Engineering strain at maximum load = %.3f \n Percentage Elongation = %.2f \n',Y,E,TS,e_max_load,EL)
