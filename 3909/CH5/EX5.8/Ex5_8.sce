clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.8
//calculation of uncertainty in momentum and frequency of photons transmitted
//given data
c=3*10^8; //speed (in m/s) of light
delta_t=10^-3; //time (in s)
h=6.6*10^-34; //Planck's constant (in Js)
//calculation
delta_x=c*delta_t; //uncertainty in position (in m)
delta_p=h/(4*%pi*delta_x); //uncertainty in momentum (in kg m/s)
delta_nu=round(1/(4*%pi*delta_t)); //frequency (in Hz) of photons
printf("\nuncertainty in momentum is %1.2e kg m/s",delta_p)
printf("\nfrequency of photons is %d Hz",delta_nu)
