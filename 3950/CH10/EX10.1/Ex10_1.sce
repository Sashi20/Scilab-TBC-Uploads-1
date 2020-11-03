// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 10.1 - Heating metal for casting
// Given that
row = 7.5 // Density in g/cm^3
V = 1000000 // m^3 = 10^6 cm^3
C_s = 0.33 // Specific heat in J/gC
T_m = 800 // Melting point in C
T_o = 25 // Ambient temperature in the foundry C
H_f = 160 // Heat of fusion J/g 
C_l = 0.29 // Weight specific heat of the liquid metal J/gC
T_p = 100 // pouring temperature in C
H = row*V*((C_s*(T_m - T_o))+H_f+(C_l*(T_p)))
printf('Heat energy = %.0f J',H)
