//Windows 10
// Scilab 6.0.0
//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
E_e1= -0.771 //voltage
R= 8.31 //in electrical units J/mol K
T= 25 //temperature in Celsius
F= 96500 //charge in coloums
M= 0.02 //ferric ion activity in m
M1= 0.1 //ferrous ion activity in m

//CALCULATIONS
E1= E_e1-(R*(273+T)*2.3*log10(M/M1)/F)

//RESULTS
mprintf("Oxidation potential of copper electrode = %.2f v",E1)
