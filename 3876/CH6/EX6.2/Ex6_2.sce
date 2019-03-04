
//Chapter 6 Solutions of Electrolytes

clc;
clear;

//Initialisation of Variables
Na=0.001 //molar
NaCl= 0.001 //molar
BaCl= 0.002 //molar
Cl= 0.004 //molar
n= 1 //moles
n1= 2 //moles
v= 0.509

//CALCULATIONS
Is= 0.5*(Na*n**2+NaCl*n**2+Cl*n**2+BaCl*n1**2)
r= 10**(-v*n**2*sqrt(Is))*Na
r1= 10**(-v*n1**2*sqrt(Is))*BaCl

//RESULTS
mprintf("Ionic strength= %.3f",Is)
mprintf("\nActivity of sodium = %.4f molar",r)
mprintf("\nActivity of barium = %.4f molar",r1)
