//Windows 10
// Scilab 6.0.0
//Chapter 14 Determination of Hydroniumion Concentrations

clc;
clear;

//Initialisation of Variables
E= 0.527 //potential in v
T= 25 //temperature in Celsius
R= 0.0592  //constant
e= -0.246 //potential in v

//CALCULATIONS
pH= -(-E-e)/R

//RESULTS
mprintf("pH of the unknown solution= %.2f",pH);
