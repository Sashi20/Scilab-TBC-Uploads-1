// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 18.3 - Extrusion Pressures
// Given that
L = 75
D_o = 25
a = 0.8
b = 1.5
r_x = 4 // Extrusion ration
K = 415 // Strength Coefficient in MPa
n = 0.18 // Strain hardening exponent
epsilon = log(r_x)
epsilon_x = a + (b*log(r_x)) 
Y_f = (K*(epsilon^n))/(1+n)
p = Y_f*(epsilon_x + ((2*L)/D_o))
L50 = 50
L25 = 25
L0 = 0
p_50 = Y_f*(epsilon_x + ((2*L50)/D_o))
p_25 = Y_f*(epsilon_x + ((2*L25)/D_o))
p_0 = Y_f*(epsilon_x + ((2*L0)/D_o))
printf('The pressure applied at L=75 is %.0f MPa\nThe pressure applied at L=50 is %.0f MPa\nThe pressure applied at L=25 is %.0f MPa\nThe pressure applied at L=0 is %.0f MPa\n',p,p_50,p_25,p_0)
