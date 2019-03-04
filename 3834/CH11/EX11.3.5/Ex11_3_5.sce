//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.3.5
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

BER=1E-9;//bit error rate
Kb=1.38E-23;//Boltzman constant in J/K
T=300;//Room temperature in K
P=Kb*T;
Rl=50E+3;
x=(4*P)/Rl;
It=sqrt(x*BWpd);
Q=6;
e=1.6E-19;//Electrons value in Coulomb

Pmin=(It+e*Q*BWpd)*(Q/Rl);
mprintf("The minimal optical power-photodiode sensitivity Pmin= %.2f nW",Pmin*1E+9);
