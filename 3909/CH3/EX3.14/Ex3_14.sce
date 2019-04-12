clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.14
//calculation of wavelength of used
//given data
theta=%pi/6; //angle (in degrees) at which second order spectral line is observed
n=2; //order of spectral line
a_plus_b=10^-2/4250; //number of lines
//calculation
lambda=a_plus_b*sin(theta)/n; //wavelength of light (in m)
printf("\nThe wavelength of light is %2d Armstrong", lambda*10^10)
