clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.22
//calculation of resolving limit 
//given data
lambda=5500*10^-10; //wavelength (in m) of light
alpha=atand(0.5/0.25)
x_min=(0.61*lambda)/sind(alpha); //resolving limit
printf("\nresolving limit is %1.1e m",x_min)
//the answer provided in the book is wrong
