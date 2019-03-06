//Windows 10
// Scilab 6.0.0

//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
I= 50 //current in amp
t= 1 //time in hr
F= 96500 //farads in amp-sec
mh= 1.01 //weight in gms
mc= 35.46 //weight in gms
ms= 107.88 //weight in gms
mb= 79.9 //weight in gms
mf= 55.85 //weight in gms
V= 11.2 //volume in litres
e= 8 //potential in v

//CALCULATIONS
N= I*t*60*60/F
Mh= mh*N
Mc= mc*N
Ms= ms*N
Mb= mb*N
Mf= mf*N
v= N*V
E= e*I*60*60
Ee = E * 2.78e-7 //joules to kilowatt-hour conversion

//RESULTS
mprintf("Number of faradays used= %.2f",N)
mprintf("\nQuantity of hydrogen produced= %.2f grams",Mh)
mprintf("\nQuantity of chlorine produced= %.2f grams",Mc)
mprintf("\nQuantity of silver produced= %.2f grams",Ms)
mprintf("\nQuantity of bromine produced= %.2f grams",Mb)
mprintf("\nQuantity of ferrous ion  produced= %.2f grams",Mf)
mprintf("\nVolume occupied by gases= %.2f lit",v)
mprintf("\nEnergy expenditure= %.0f joules or %.2f kilowatt-hour",E,Ee)

//The difference in the solution compared to textbook is due to round off error
