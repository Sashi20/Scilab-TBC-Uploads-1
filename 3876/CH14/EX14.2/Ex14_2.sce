//Windows 10
// Scilab 6.0.0
//Chapter 14 Determination of Hydroniumion Concentrations

clc;
clear;

//Initialisation of Variables
e= 0.266 //potential in voltage
R= 0.0592  //constant

//CALCULATIONS
pH= e/R

//RESULTS
mprintf("pH of the unkown solution= %.2f",pH)
