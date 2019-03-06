//Windows 10
// Scilab 6.0.0
//Chapter 8 Chemical Equlibrium

clc;
clear;

//Initialisation of Variables
n= 1 //no of moles
x= 3 //no of moles
y= 4 //no of moles

//CALCULATIONS
r= x**2/n**2
z= n/x
n= n+z
n1= x-z

//RESULTS
mprintf("Moles of acid and alcohol= %.2f moles",n)
mprintf("\nMoles of ester and water= %.2f moles",n1)
