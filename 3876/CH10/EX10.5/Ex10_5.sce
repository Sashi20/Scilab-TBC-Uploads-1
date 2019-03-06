//Windows 10
// Scilab 6.0.0
//Chapter 10 Electmotive Force

clc;
clear;

//Initialisation of Variables
E_Pb_Pb2_plus= 0.126 //voltage in v
E_Cl2_Cl_minus= -1.360 //voltage in v
M= 0.02 //ion activity in m
M1= 1/0.1 //ion activity in m
R= 8.31 //in electrical units J/mol K
T= 25 //temperature in Celsius
F= 96500 //charge in coloums

//CALCULATIONS
E_cell= (E_Pb_Pb2_plus-R*(273+T)*2.3*log10(M)/(2*F))-(E_Cl2_Cl_minus-R*(273+T)*2.3*log10(M1)/(F))

//RESULTS
mprintf("Oxidation potential of copper electrode = %.3f v",E_cell)
