//Windows 10
// Scilab 6.0.0

//Chapter 6 Solutions of Electrolytes

clc;
clear;

//Initialisation of Variables
Na=0.001 //solution molarity in Na
NaCl= 0.001 //solution molarity in NaCl
BaCl= 0.002 //solution molarity in BaCl
Cl= 0.004 //solution molarity in Cl
n= 1 //no of moles
n1= 2 //no of moles
v= 0.509 //given

//CALCULATIONS
Is= 0.5*(Na*n**2+NaCl*n**2+Cl*n**2+BaCl*n1**2)
r= 10**(-v*n**2*sqrt(Is))*Na
r1= 10**(-v*n1**2*sqrt(Is))*BaCl

//RESULTS
mprintf("Ionic strength= %.3f",Is)
mprintf("\nActivity of sodium = %.4f molar",r)
mprintf("\nActivity of barium = %.4f molar",r1)
