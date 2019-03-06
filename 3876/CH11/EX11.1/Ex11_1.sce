//Windows 10
// Scilab 6.0.0
//Chapter 11 Thermodynamics Some Basic Concepts

clc;
clear;

//Initialisation of Variables
T= 25 //temperature in Celsius
T1= 75 //temperature in Celsius
k= 6.45 //cal per mole per degree - molar heat capacity
k1= 1.41*10**-3 //cal per mole per degree k^-1  - molar heat capacity
k2= -8.1*10**-8 //cal per mole per degree k^-2  - molar heat capacity
m= 14 //weight in gms
M= 28 //weight in gms

//CALCULATIONS
Cp= k+k1*(273+T)+k2*(273+T)**2
Cp1= k+k1*(273+T1)+k2*(273+T1)**2
cp= (Cp+Cp1)/2
H= (m/M)*cp*(T1-T)
H1= (m/M)*(k*(T1-T)+(k1/2)*((273+T1)**2-(273+T)**2)+(k2/3)*((273+T1)**3-(273+T)**3))

//RESULTS
mprintf("Heat required= %.1f cal",H)
mprintf("\nValue of dH= %.1f cal",H1)

//The difference in the solution compared to textbook is due to round off error
