//Windows 10
// Scilab 6.0.0
//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
T= 25 //temperature in Celsius
M= 0.08 //activity of hydronium ions in m
P= 1 //pressure in atm
F= 96500 //charge in coloumbs
R= 8.31 //in electrical units J/mol K

//CALCULATIONS
E_e1= -R*(273+T)*2.3*log10(M)/F

//RESULTS
mprintf("Oxidation potential of hydrogen electrode = %.3f v",E_e1)

//The difference in the solution compared to textbook is due to round off error
