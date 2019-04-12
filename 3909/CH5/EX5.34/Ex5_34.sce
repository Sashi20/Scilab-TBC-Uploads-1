clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.34
//calculation of de Broglie wavelength of incident electron and transmission probabilities
//given data
h=6.63*10^-34; //Planck's constant (in Js)
m=9.1*10^-31; //mass of an electron (in kg)
U0=6*1.6*10^-19; //barrier height 
a=7*10^-10; //width of barrier (in m)
E=5*1.6*10^-19; //energy (in eV)
e=1.6*10^-19; //charge of electrons
V=5; //in eV
//calculation
lambda=h/sqrt(2*m*e*V); //de Broglie wavelength of incident electron 
alpha=sqrt(2*m*(U0-E))/(h/(2*%pi))
T=16*E/U0*(1-E/U0)*exp(-2*alpha*a); //transmission probability 
printf("\nde Broglie wavelength of incident electron is %1.1f Armstrong",lambda*10^10)
printf("\ntransmission probabilities is %1.2e",T)
//the second part of the answer varies due to round off error
