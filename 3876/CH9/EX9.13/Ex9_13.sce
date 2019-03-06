//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
k1= 3.5*10**-7  //given
k2= 4.4*10**-11  //given

//CALCULATIONS
c= sqrt(k1*k2)

//RESULTS
mprintf("Concentration of solution = %.2e mol per litre",c)
