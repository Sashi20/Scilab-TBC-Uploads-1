//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 3.3.2
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given
L=5;//fiber length in km
NA=0.275;//numerical aperture
c=3E5;//speed of light in km
n1=1.48;//refractive index

p=2*c*n1;

e=NA*NA;

d=L*e;

deltatsi=(d/p)*1E9;//answer is changed due round-off
Q=(deltatsi/L)

mprintf("\n light pulse spreading= %.2f sec",deltatsi);
mprintf("\n ratio of deltatsi per length is=%.2f sec/Km",Q);
