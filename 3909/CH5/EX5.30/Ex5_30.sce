clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.30 
//calculation of binding energy of the neutron in the neucleus
//given data
a=2*10^-15; //side of cubical box (in m)
m=1.6*10^-27; //mass (in kg) of an neutron
h=6.626*10^-34; //Planck's constant (in Js) 
e=1.6*10^-19; //electronic charge (in C)
//calculation
E_111=(3*h^2)/(8*m*a^2); //binding energy (in J) of the neutron in the neucleus
printf("\nbinding energy of the neutron in the neucleus is %0.1f Mev",E_111/(e*10^6)')
//the answer provided in the textbook is wrong
