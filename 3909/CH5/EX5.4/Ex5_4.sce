clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.4
//calculation of de Broglie wavelength
//given data
m0=1.66*10^-27; //mass of proton (in kg)
h=6.62*10^-34; //Planck's constant (in Js)
c=3*10^8; //speed of light (in m/s)
K=1.6*10^-19*10^6; //kinetic energy (in V)
//calculation
lambda=(h*c)/(sqrt(K*(K+2*m0*c^2))); //de Broglie wavelength (in m)
printf("\nde Broglie wavelength is %1.2e Armstrong",lambda*10^10)
