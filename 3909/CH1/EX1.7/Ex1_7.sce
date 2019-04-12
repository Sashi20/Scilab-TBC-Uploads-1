clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.7
//calculation of thickness of a plate
//given data
lambda=6000*10^-10; //wavelength (in m) of light
mu=1.50; //refractive index of glss plate
n=6; //sixth bright fringe
//calculation
t=(n*lambda)/(mu-1); //thickness (in m) of the plate
printf("\nthickness of the plate is %1.4f mm",t*10^3)
//the answer provided in the textbook is wrong
