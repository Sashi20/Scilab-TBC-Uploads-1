clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 19.4 - Forces in Deep drawing
// Given that
D_p = 75
t = 2.4 // Original blank thickness in mm
TS = 300 // Tensile strength in MPa
D_b = 138 // Blank diameter in mm
Y = 175 // Yield strength in MPa
R_d = 6 // Die corner radius
F = %pi*D_p*t*TS*((D_b/D_p)-0.7) // Maximum drawing force in N
F_h = 0.015*Y*%pi*((D_b^2)-(D_p +(2.2*t)+(2*R_d))^2)
printf('Maximum drawing force = %.0f N \nHolding force = %.0f N',F,F_h)
