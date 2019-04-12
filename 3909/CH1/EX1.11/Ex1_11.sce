clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.11
//calculation of thickness of film
//given data
lambda1=6.1*10^-5; //wavelength (in cm) of light
lambda2=6*10^-5; //wavelength (in cm) of light
mu=4/3; //refractive index for film
i=asin(4/5); //angle of incidence
//calculation
t=(lambda1*lambda2)/(lambda1-lambda2)*1/(2*sqrt(mu^2-sin(i)^2))
printf('\nthickness of film is %0.4f cm',t)
