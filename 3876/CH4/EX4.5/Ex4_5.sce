//Windows 10
// Scilab 6.0.0

//Chapter 4 Solutions Nonelectrolytes

clc;
clear;

//Initialisation of Variables
p = 17.4 //pressure in mm
m= 1000 //weight in gms
M= 18 //weight in gms
n= 2 //no of moles

//CALCULATIONS
P= p*((m/M)/((m/M)+n))
P1= p*(n/((m/M)+n))
dp= p-P1
p=p-P1

//RESULTS
mprintf("Vapour pressure of solution= %.2f mm",P1)
mprintf("\n p= %.2f mm",p)
