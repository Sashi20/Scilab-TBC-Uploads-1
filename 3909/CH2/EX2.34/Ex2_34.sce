clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.34
//calculation of rotation of plane of polarization of light
//given data
lambda=7620*10^-10; //wavelength (in m) of light
mu_R=1.53914; //refractive index for right handed polarized light
mu_L=1.53920; //refractive index for left handed polarized light
l=0.5*10^-3; //thickness (in m) of plate
//calculation
theta=%pi/lambda*l*(mu_L-mu_R)*180/%pi; //optical rotation (in degrees)
printf("\nrotation of plane of polarization of light is %1.1f degree",theta)
