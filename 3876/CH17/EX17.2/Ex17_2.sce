//Windows 10
// Scilab 6.0.0
//Chapter 17 Speed of Reaction Catalysis
// Example 17.3 in textbook

clc;
clear;

//Initialisation of Variables
t= 10 //time in min
a0= 0.01 //concentration in molar
a= 0.00464 //concentration of base found in molar

//CALCULATIONS
k= (a0-a)/(a0*a*t)
t_half= 1/(k*0.01)

//RESULTS
mprintf("Velocity constant= %.2f min^-1",k)
mprintf("\nHalf-time period= %.1f min",t_half)
