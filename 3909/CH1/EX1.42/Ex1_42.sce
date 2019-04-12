clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.42
//calculation of minimum thickness of a layer of cryolite and change in wavelength
//given data
mu=1.35; //refractive index of cryolite
lambda0=5940*10^-10; //wavelength (in m) of light
n=1
mu0=1; //refractive index of air
i=10; //angle of incidence (in degrees)
//calculation
t=(n*lambda0)/(2*mu); //minimum thickness of a layer of cryolite (in m)
lambda=lambda0*sqrt(1-(sind(i)^2)/mu^2); //transmitted wavelength (in m)
del_lambda=lambda0-lambda; //change in wavelength (in m)
printf("\nminimum thickness of a layer of cryolite is %d Armstrong",t*10^10)
printf("\nchange of wavelength is %d Armstrong",del_lambda*10^10)
//answer varies due to round off error
