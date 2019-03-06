//Windows 10
// Scilab 6.0.0
//Chapter 14 Determination of Hydroniumion Concentrations

clc;
clear;

//Initialisation of Variables
E= 0.232 //potential in voltage
R= 0.0592  //constant
p= 1 //pressure in atm
R1= 0.0296// constant
P= 740 //pressure in atm

//CALCULATIONS
pH= E/R
pH1= (E-R1*log10(P/760))/R
e= pH1-pH
e= e-0.002

//RESULTS
mprintf("Error in pH of solution= %.3f",e)
