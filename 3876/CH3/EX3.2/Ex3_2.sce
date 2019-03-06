//Windows 10
// Scilab 6.0.0
//Chapter 3 Liquids

clc;
clear;

//Initialisation of Variables
d= 0.789 //density in gram per cc
r= 0.010 //radius in cm
h= 5.76 //height in cm
g= 980.7 //acceleration in cm /sec^2

//Calculations
Gamma= d*h*r*g/2

//Results
mprintf("Surface Tension = %.1f dynes per cm",Gamma);
