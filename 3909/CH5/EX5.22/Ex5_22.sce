clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.22
//calculation of release of energy
//given data
m=1.6*10^-27; //mass of proton (in kg)
a=1.0*10^-14; //size of nucleus (in  m)
h=6.62*10^-34; //Planck's constant (in Js)
n=1; //for ground state
e=1.6*10^-19; //electronic charge (in C)
n_dash=2; //for excited state
//calculation
del_E=h^2/(8*m*a^2)*(n_dash^2-n^2); //release of energy (in J)
printf("\nrelease of energy is %0.1f MeV",(del_E*10^-6)/e)
