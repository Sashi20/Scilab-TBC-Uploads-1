//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 9.1
//Finding the Critical Value of dv/dt for a Thyristor.

clc;
clear;
Cj2=20;                          //Capacitance of thyristor J2 in pico farad.
Ij2=16;                          //Charging current of thyristor in milli Ampere.
dv=(Ij2*10^-3)/(Cj2*10^-12);     //Calculating the change in voltage.
printf("\n\tThe critical value of dv/dt is %0.0fV/µs",dv*10^-6);
