clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.6
//calculation of uncertainty in position
//given data
t=1; //time(in s)
m0=1.67*10^-27; //mass of proton (in kg)
delta_x0=10^-11; //accuracy of position (in m)
h=6.62*10^-34; //Planck's constant (in Js)
//calculation
delta_x=(h*t)/(4*%pi*m0*delta_x0); //uncertainty in position (in m)
printf("\nuncertainty in position after 1s is %1.2f km",delta_x*10^-3)
