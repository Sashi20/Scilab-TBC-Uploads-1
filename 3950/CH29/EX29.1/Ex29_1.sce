// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 29.1 - Power in arc welding
// Given that
I = 300 // Current in Amperes
E = 20 // Voltage in V
f1 = 0.7 // Heat transfer factor from Table 29.1
f2 = 0.5 // Melting factor
Um = 10 // melting energy for the metal in J/mm^3
P =I*E // Power in the arc-welding operation in W
R_HW = f1*f2*I*E // Rate of heat used for welding in J/s
R_VW = R_HW/Um // Volume of rate of metal welded in mm^3/s
printf('Power in the arc-welding operation = %.0f W \n Rate of heat used for welding = %.0f J/s \n Volume of rate of metal welded = %.0f mm^3/s \n',P,R_HW,R_VW)
// the answer in the textbook was wrong
