//Windows 10
// Scilab 6.0.0
//Chapter 14 Determination of Hydroniumion Concentrations

clc;
clear;

//Initialisation of Variables
e= 0.323 //potential in voltage
R= 0.0592  //constant
c= 0.001 //molar

//CALCULATIONS
pH= (e-R*log10(c))/R

//RESULTS
mprintf("pH of the unknown solution= %.2f",pH)
