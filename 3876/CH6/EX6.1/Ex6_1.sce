//Windows 10
// Scilab 6.0.0
//Chapter 6 Solutions of Electrolytes

clc;
clear;

//Initialisation of Variables
T= 25 //temperature in Celsius
R= 0.0821 //gas constant li-atm per mole per degree
M= 0.5 //molality of solution
n= 2  //for total effective concentration
m= 0.680  //effective concentration
V= 1 //volume in litres

//CALCULATIONS
P= R*(273+T)*M*n*m/V

//RESULTS
mprintf("Osmotic pressure= %.2f atm",P)

//The difference in the solution compared to textbook is due to round off error
