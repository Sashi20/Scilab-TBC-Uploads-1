// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 40.3  - Taguchi Loss Function
// Given that 
tolerance = 0.04 // (x-N) is the tolerance
M_c = 80 // Manufacturer cost in $
Product_prob = 0.75 // Product probablity
replace_prob = 1 - Product_prob
E_L_x = Product_prob*M_c + replace_prob*0 // Excepeted cost of replacement and shipping
k = E_L_x/(tolerance)^2 // Constant of proportionality
tolerance1 = 0.01 
L_x = k*(tolerance1)^2
printf('Constant of proportionality = %.0f in $\n The Significant reduction = %.2f ',k,L_x)
