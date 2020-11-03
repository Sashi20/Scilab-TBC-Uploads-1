// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 39.1  - Make or buy cost comparison
// Given that 
UC = 2.25 // Unit material cost in $ per unit
DL = 2 // Direct labor cost in $ per unit
LO = 3 // Labor overhead at 150% cost in $ per unit
EO = 1.75 // Equipment fixed cost in $ per unit
VC = 8 // Component vendor cost in $ per unit
TC = 9 // Home factory cost in $ per unit
CC = VC+EO+LO // Company cost
printf('The Cost to the company = %.2f in $',CC)
// If the equipment can be used to produce other components for which the internal prices are less than the corresponding external quotes, then a buy decision makes good economic sense.
