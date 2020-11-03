// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 3.3 - Flow curve parameters
// Given that
// Data given from the example 3.1
F = 32000 // Force applied in N
Ao = 200 // Original area of cross of test speciment in MPa
Y =  F/Ao // Yield Strength (Y), MPa
L = 50.2 // Length at any point during the elongation in mm
Lo = 50 // Gage length in mm
Lo_max = 57.7 // Maximum length before necking beigns in mm
Le = 0.002 // 
Fmax = 65000 // Maximum load in N
Lf = 63.5 // Speciemen length at fracture in m
e = log((L/Lo)-Le ) // True strain
// At maximum load
e_2 = 0.143  
sigma = 375 
// The corresponding flow equation is 160 = K (0.001998)^n for Example 3.1
// the corresponding flow equation is 375 = K(0.143)^n for Example 3.2
// Solving n 
n = (log(sigma)-log(Y))/(log(e_2)-(log(e)))
K = Y/(e)^n //  Substituting back into Example 3.1 equation
printf ('The flow curve equation is sigma = %.1f e^ %.4f \n',K,n)
