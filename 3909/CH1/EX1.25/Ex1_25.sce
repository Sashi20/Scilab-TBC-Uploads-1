clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.25
//calculation of refractive index of a liquid
//given data
lambda=5890; //wavelength of reflected light (in Armstrong)
n=5; //number of dark ring
D_n=0.32; //diameter of 5th ring (in cm)
R=1.20; //radius of curvature (in m)
//calculation
mu=(4*n*lambda*10^-10*R)/(D_n*10^-2)^2; //refractive index of the liquid
printf("\nrefractive index of the liquid is %0.2f",mu)
