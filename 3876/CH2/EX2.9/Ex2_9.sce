//Windows 10
// Scilab 6.0.0
//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
V= 5.16*10**4 //velocity in cm per sec
M2= 28 //weight in gms
M1= 2.02 //weight in gms

//CALCULATIONS
c1= sqrt(M2/M1) * V
c1=c1/10000   //cm per sec

//RESULTS
mprintf("Velocity of hydrogen molecule = %.1f*10^4 cm per sec",c1)
