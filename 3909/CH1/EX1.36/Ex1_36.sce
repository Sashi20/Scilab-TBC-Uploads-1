clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.36
//calculaton of wavelength of light
//given data
x=0.0589*10^-3; //distance (in m) moved by the mirror
n=200; //number of fringes
//calculation
lambda=(2*x)/n; //wavelength (in m) of light 
printf("\nwavelength of light is %d nm",lambda*10^9)
