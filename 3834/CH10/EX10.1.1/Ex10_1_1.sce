//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.1.1
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given
E=0.712;//the energy gap E=Ec-Ef in eV
Kb=1.38E-23;//Boltzman constant in J/K
T=300;//Room temperature in K
e=1.6E-19;//Electrons value in Coulomb
P=(Kb*T)/e;
Y=E/P;
fE= exp(-Y);

mprintf("the probability of excited electrons at conduction band at room tenmperature = %.3f ",fE*1E+12);
