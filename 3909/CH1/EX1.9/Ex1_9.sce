clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.9
//calculation of wavelength of light used
//given data
mu=1.4; //refractive index of wedge
theta=40; //angle of wedge (in seconds)
W=1.25*10^-3; //distance between successive fringes (in m)
//calculation
lambda=2*mu*(theta*3.14)/(3600*180)*W; //wavelength of light used (in m)
printf('\nwavelength of light used is %1.0e m',lambda)
