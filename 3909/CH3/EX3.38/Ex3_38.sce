clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.38
//calculation of resolving power
//given data
lambda=5000*10^-10; //wavelength (in m) of light
n=2; //order of diffraction
W=2.5*10^-2; //width of grating (in m)
//calculation
a_plus_b=lambda/0.1; //grating element (in m)
N=W/a_plus_b; //number of lines on grating
RP=n*N; //resolving power
printf("\nResolving power is %d",RP)
