// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.25
clc
clear
//Given Data Set in the Problem
dens=1000
g=9.81
Z=4000
p0=10.143*10^4
t0=15
T0=t0+273.15
L=-0.0065
dens0=1.285
R=p0/(dens0*T0);
function f=F(k)
f=L+(g/R)*((k-1)/k);
endfunction
k=1;
y=fsolve(k,F);
k=y;
//1) Pressure at 4000m is given by
P=p0*(1-((k-1)/k*g*Z*dens0/p0))^(k/(k-1))
mprintf("The Pressure at 4000 m is %.3f N/cm^2\n",P*10^-4)
//2) Density 
t=t0+L*Z;
T=273+t;
density=P/(R*T);
mprintf(" The density at 4000 m is %.2f kg/m^3",density)
