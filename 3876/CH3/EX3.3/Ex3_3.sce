//Windows 10
// Scilab 6.0.0
//Chapter 3 Liquids

clc;
clear;

//Initialisation of Variables
W= 0.220 //weight in gms
g= 980.7 //acceleration in cm per sec62
f= 0.98 //correction factor
l= 4 //circumference in cm

//Calculations
T= W*g/(2*l)
Tc= ceil(T)*f

//Results
mprintf("Apparent Surface Tension = %.1f dynes per cm",T);
mprintf("\nExact Surface Tension = %.1f dynes per cm",Tc);
