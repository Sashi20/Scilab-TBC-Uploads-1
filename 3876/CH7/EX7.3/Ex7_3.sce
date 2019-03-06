//Windows 10
// Scilab 6.0.0

//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
i= 20 //current in amp
t= 50 ///time in min
F= 96500 //chage in coloumb
we= 8 //volume in litres
Mo= 32 //volume in litres
M= 27 //volume in litres
n= 3

//CALCULATIONS
nf= i*t*60/F
V= we*22.4/Mo*nf
G= M/n
q= G*nf

//RESULTS
mprintf("Volume of oxygen produced= %.2f liters",V)
mprintf("\nQuantity of aluminium produced= %.2f grams",q)
