clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.41
//calculation of thickness of plate
//given data
mu=1.5; //refractive index of glass plate
n=100; //number of fringes
lambda=6328*10^-10; //wavelength (in m) of laser
format(16)
t=(n*lambda)/(2*(mu-1)); //thickness (in m) of the plate
printf("\nthickness of the plate is %1.3e m",t)
