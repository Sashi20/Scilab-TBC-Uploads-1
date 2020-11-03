// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 19.2 - Sheet-metal Bending
// Given that
TS = 450 // Tensile Strength in MPa
D = 25 // Die opening diameter in mm
alpha = 60 // Bend angle
alpha_d = 120 // Included angle
K_bf = 1.33
w = 44.5 // width
R = 4.75 // Bend radius in mm
K_ba = 0.33
t = 3.2 // Stock thickness in mm
A_b = (2*%pi*(alpha/360))*(R+(K_ba*t))
blank_size = 38 + A_b + 25 // 35 and 25 are shown in figure 19.15
F = (K_bf*TS*w*(t^2))/D
printf('The Length of the blank = %.2f mm \n Force = %.0f N',blank_size,F)
