
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 0.010 //M
Ksp= 1.56*10**-10
M= 108 //gms
C= 10**-3 //M

//CALCULATIONS
K= Ksp/C
m= M*K
m1= M*c

//RESULTS
mprintf("The atomic weight of silver being %d, the weight of silver remaining \n in solution is %.2e gram",M,m)
mprintf("\nThe original quantity of silver in the solution was %.2e grams",m1)
