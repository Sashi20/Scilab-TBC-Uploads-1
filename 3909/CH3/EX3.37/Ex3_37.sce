clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.37
//calculation of angular dispersion and effective width of grating
//given data
lambda=5000*10^-10; //wavelength (in m) of light
n=2; //order of diffraction
dlambda=10^-10; //difference of wavelengths (in m)
a_plus_b=10^-2/6000; //number of lines per m
//calculation
dtheta=(n*dlambda)/sqrt(a_plus_b^2-n^2*lambda^2); //angular dispersion (in radians)
N=lambda/(n*dlambda); //resolving power
W=N*a_plus_b; //width of grating
printf("\nangular dispersion is %1.1e rad",dtheta)
printf("\nwidth of grating is %0.3f cm",W*10^2)
