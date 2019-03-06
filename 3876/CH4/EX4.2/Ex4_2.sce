//Windows 10
// Scilab 6.0.0

//Chapter 4 Solutions Nonelectrolytes

clc;
clear;

//Initialisation of Variables
m= 0.0346 //weight in gms
V= 800 //volume in ml
P= 742 //pressure in mm
M= 32 //weight in gms
p= 400 //pressure in mm

//CALCULATIONS
c= m*1000/V
g= c*760/(P*M)
K= g*22.4
k= c/P
c1= k*p

//RESULTS
mprintf("Part (a)")
mprintf("\nConcentration of oxygen= %.4f gram per litre",c)
mprintf("\nPart (b)")
mprintf("\nMoles dissolved = %.5f moles",g)
mprintf("\nPart (c)")
mprintf("\nBunsen absorption = %.4f litre",K)
mprintf("\nPart (d)")
mprintf("\nGrams of oxygen dissolved = %.4f gram per litre",c1)
mprintf("\nHenry law can be written ")
cp=c*p/P
mprintf("%.4f gram per liter",cp)

//The difference in the solution compared to textbook is due to round off error
