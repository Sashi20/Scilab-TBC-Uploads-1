//Windows 10
// Scilab 6.0.0

//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 0.010 //Molarity of solution
Ksp= 1.56*10**-10  //given
M= 108 //weight in gms
C= 10**-3 //Molarity of solution

//CALCULATIONS
K= Ksp/C
m= M*K
m1= M*c

//RESULTS
mprintf("The atomic weight of silver being %d, the weight of silver remaining \n in solution is %.2e gram",M,m)
mprintf("\nThe original quantity of silver in the solution was %.2e grams",m1)
