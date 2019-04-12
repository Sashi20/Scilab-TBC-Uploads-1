clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.39
//calculation of (a)dispersion around 5460 Armstrong in third order (b)resolving power in its fifth order
//given data
N=9600; //number of lines
W=3*10^-2; //width of grating (in m)
n=3; //third order
n_dash=5; //fifth order
lambda=5460*10^-10; //wavelength (in m) of light
//calculation
a_plus_b=W/N; //grating element (in m)
theta=asind(n*lambda)/a_plus_b; //from the gratig equation (a+b)*sin(theta)=n*lambda (in degrees)
dtheta_by_dlambda=n/((a_plus_b)*cosd(theta)); //dispersion (in rad/nm)
RP=n_dash*N; //resolving power
printf("\n(a)dispersion around 5460 Armstrong is %1.4f rad/nm",dtheta_by_dlambda/10^9)
printf("\n(b)resolving power in its fifth order is %d",RP)
//the first part of the answer provided in the textbook is wrong
