//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
pH= 7.10  //given
pKa= 7.21  //given

//CALCULATIONS
r= 10**(pH-pKa)

//RESULTS
mprintf("Ratio of salt to acid = %.3f",r)
