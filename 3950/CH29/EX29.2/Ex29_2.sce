// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 29.2 - Resistance welding
// Given that
I = 12000 // Current in Amps
R = 0.0001 // Resistance in ohms
t = 0.2 // time in seconds
d = 6 // electrodes diameter in mm
T = 3 // thickness in mm
Um = 12 // Melting energy of the metal in J/mm^3
H = (I^2)*R*t // Heat generated in the operation
v = T*((%pi*(d^2))/4) // Volume of the weld nugget (assumed disc-shaped)
Hw = v*Um // Heat required to melt this volume of metal in J
Remaining_heat = H - Hw 
printf('The remaining heat = %.0f J \n ',Remaining_heat)
