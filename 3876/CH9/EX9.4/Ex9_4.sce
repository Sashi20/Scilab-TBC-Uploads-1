//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
Ka= 1.4*10**-5
T= 25 //temperature in Celsius
V= 200 //volume in millilitres
m= 3.7 //weight in gms
m1= 4.8 //weight in gms
M= 74 //weight in gms
M1= 96 //weight in gms

//CALCULATIONS
x= m*1000/(V*M)
y= m1*1000/(V*M1)
X= Ka*x/y

//RESULTS
mprintf("hydronium-ion concentration = %.2e mole per litre",X)
