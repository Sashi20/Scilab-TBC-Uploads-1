//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
Ksp= 1.4*10**-11  //given
V= 200 //volume in ml
M= 24.3 //weight in gms

//CALCULATIONS
x= (Ksp/4)**(1/3)
m= x*M*V/1000

//RESULTS
mprintf("Grams of Mg+2 present = %.1e gms per mol",m)

//The difference in the solution compared to textbook is due to round off error
