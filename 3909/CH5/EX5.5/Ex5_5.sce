clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.5
//calculation of uncertainty in the determining position of the electron
//given data
h=6.62*10^-34; //Planck's constant (in Js)
delta_p=5*10^-27*0.003/100; //uncertainty in momentum (in kg-m/s)
//calculation
delta_x=h/(4*%pi*delta_p); //uncertainty in position (in m)
printf("\nuncertainty in position is %1.1e m",delta_x)
