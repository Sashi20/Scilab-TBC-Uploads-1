//Windows 10
// Scilab 6.0.0
//Chapter 11 Thermodynamics Some Basic Concepts

clc;
clear;

//Initialisation of Variables
m= 9 //weight in gms
T= -10 //temperature in Celsius
T1= 0 //temperature in Celsius
R= 0.5 //cal per gram per degree - heat capacity
H= 79.7 //cal per gram - heat of vaporization
R1= 1 //cal per gram per degree - heat of evaporation
T2= 100 ///temperature in Celsius
H1= 539.7 //cal per gm - heat of vaporization
R2= 8.11 //cal per gram per degree - heat of evaporation
M= 18 //weight in gms
T3= 40 //temperature in Celsius

//CALCULATIONS
dH1= m*R*(T1-T)
dH2= m*H
dH3= m*R1*(T2-T1)
dH4= m*H1
dH5= (m/M)*R2*(T3-T1)
dH= dH1+dH2+dH3+dH4+dH5

//RESULTS
mprintf("Value of dH= %.1f cal",dH)
