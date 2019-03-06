//Windows 10
// Scilab 6.0.0
//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
E_Cu_Cu2_plus= -0.337 //voltage of electrode
R= 8.31 //in electrical units J/mol K
T= 25 //temperature in Celsius
F= 96500 //charge in coloums
M= 0.12 //m in cupric ions

//CALCULATIONS
E_e1= E_Cu_Cu2_plus-(R*(273+T)*2.3*log10(M)/(2*F))

//RESULTS
mprintf("Oxidation potential of copper electrode = %.3f v",E_e1)
