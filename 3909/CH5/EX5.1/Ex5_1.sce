clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.1
//calculation of maximum kinetic energy of photoelectrons and the stopping potential
//given data
phi=2; //work function (in eV)
h=6.63*10^-34; //Planck's constant (in Js)
e=1.6*10^-19; //charge of an electron (in C)
//from the equation E=(100V/m)[(sin 5*10^13)*t+sin(8*10^15)*t]
omega=8*10^15; //angular frequency (in rad per s)
//calculation
nu_0=(phi*e)/h; //threshold frequency (in Hz)
nu=omega/(2*%pi); //larger frequency (in Hz)
E=(h*nu)/e; //energy of photon (in eV)
Kmax=E-phi; //maximum kinetic energy (in eV)
V=(Kmax*e)/e; //stopping potential (in V)
printf("\nmaximum kinetic energy is %0.2f eV",Kmax)
printf("\nstopping potential is %0.2f V",V)
//the answers vary due to round off error
