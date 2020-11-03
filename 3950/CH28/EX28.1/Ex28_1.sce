// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 28.1 - Power density in Welding
// Given that
d_i = 5 // diameter of inner circle in mm
d_c = 12 // Concentric circle diameter in mm
Q = 3000 // Heat source transfers
n = 0.70 // 70 percentage distribution follows
nc = 0.90 // 90 percentage distribution for concentric cirlce
A = (%pi*d_i^2)/4 // Area of inner circle
P = Q*n // Power inside the area in W
PD_inner = P/A
A_concentric = (%pi*(d_c^2 - d_i^2 ))/4 // Area of the ring outside the inner circle
P_concentric = Q*nc - P
PD_concentric = P_concentric/A_concentric
printf('Power density for 5mm diameter = %.0f W/mm^2 \nPower density for 12mm diameter = %.1f W/mm^2 \n',PD_inner,PD_concentric)
// Observation: The power density seems high enough for melting in the inner circle, but probably not sufficient in the ring that lies outside this inner circle
