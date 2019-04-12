clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.33
//calculation of separation of wavelengths in first order and resolving power in second order
//given data
N=1000; //number of lines a grating has
lambda=6000; //wavelength (in Armstrong)
n=1; //for first order
n_dash=2; //for second order
//calculation
d_lambda=lambda/N; //separation between two wavelengths (in Armstrong) for first order
RP=n_dash*N; //resolving power for second order
printf("\nseparation between two wavelengths for first order is %d Armstrong",d_lambda)
printf("\nresolving power for second order is %d",RP)
