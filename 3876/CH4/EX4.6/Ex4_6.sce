//Windows 10
// Scilab 6.0.0
//Chapter 4 Solutions Nonelectrolytes

clc;
clear;

//Initialisation of Variables
m= 92.13 //weight in gms
M= 78.11 //weight in gms
n= 1 //no of moles
p= 119.6 //pressure in mm
p1= 36.7 //pressure in mm

//CALCULATIONS
n1= m/M
x= n/(n+n1)
y= 1-x
P= y*p
P1= x*p1
P2= P+P1
m1= P/P2
m2= 1-m1

//RESULTS
mprintf("Mole fraction of benzene=%.3f",m1)
mprintf("\nMole fraction of toulene=%.3f",m2)
