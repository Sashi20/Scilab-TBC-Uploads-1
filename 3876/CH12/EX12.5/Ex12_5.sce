
//Chapter 12 Thermodynamics Thermodynamic chemistry

clc;
clear;

//Initialisation of Variables
T= 90 //C
T1= 25 //C
Cp= 6.9 //cal per mole per degree
CP1= 7.05 //cal per mole per degree
Cp2= 18 //cal per mole per degree
H= -68370 //kcal

//CALCULATIONS
H1= H+(Cp2-Cp-0.5*CP1)*(T-T1)

//RESULTS
mprintf("Heat of formation= %d cal or %.2f kcal",H1,H1/1000)
