clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.40
//calculation of specific rotation
//given data
mu_L=1.54427; //refractive index for left handed polarization
mu_R=1.54420; //refractive index for right handed polarization
lambda=5893*10^-10; //wavelength (in m) of sodium light
//calculation
pi=180; //value of pi (in degrees)
S=pi*(mu_L-mu_R)*10^-3/lambda; //specific rotation (in deg/mm)
printf("\nspecific rotation is %0.2f deg/mm",S)
