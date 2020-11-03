// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 18.2 - Open die forging
// Given that
D = 50 // diameter
h = 75 //height
h_a = 62 // Intermediate height
F = 0
epsilon = 0.002
mew = 0.1
K = 350
n = 0.17
A = %pi*((D^2)/4) // Area
V = h*%pi*((D^2)/4) // Workpiece volume
Y_f = K*epsilon^n
K_f = 1 + ((0.4*mew*D)/h)
F = K_f*Y_f*A // forging force in N
epsilon_a = log(h/h_a)  // At height 62 mm
Y_fa = K*epsilon_a^n // At height 62 mm
A_a = V/h_a // At height 62 mm, assuming constant volume and neglecting barreling
D_a = sqrt((4*A_a)/%pi) // Diameter at height 62 mm
K_fa = 1 +  ((0.4*mew*D_a)/h_a)
F_a = K_fa*Y_fa*A_a // forging force in N at 62 mm
h_b = 49 // Intermediate height at 49 mm
epsilon_b = log(h/h_b)  // At height 49 mm
Y_fb = K*epsilon_b^n // At height 49 mm
A_b = V/h_b // At height 49 mm, assuming constant volume and neglecting barreling
D_b = sqrt((4*A_b)/%pi) // Diameter at height 49 mm
K_fb = 1 +  ((0.4*mew*D_b)/h_b)
F_b = K_fb*Y_fb*A_b // forging force in N at 49 mm
h_c = 36 // Intermediate height at 36 mm
epsilon_c = log(h/h_c)  // At height 36 mm
Y_fc = K*epsilon_c^n // At height 36 mm
A_c = V/h_c // At height 36 mm, assuming constant volume and neglecting barreling
D_c = sqrt((4*A_c)/%pi) // Diameter at height 36 mm
K_fc = 1 +  ((0.4*mew*D_c)/h_c)
F_c = K_fc*Y_fc*A_c // forging force in N at 36 mm
printf(' The Forging force at begin = %.0f N \n The Forging force a t intermediate height 62mm = %.0f N \nThe Forging force a t intermediate height 49mm = %.0f N \n The Forging force a t intermediate height  36mm = %.0f N \n',F,F_a,F_b,F_c)
// Answer in textbook is wrong
