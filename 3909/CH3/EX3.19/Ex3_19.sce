clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.19
//calculation of (i) angular positions of first two maxima (ii) half-widths of maxima
//given data
a_plus_b=(0.5+1.9)*10^-2; //grating lines (in m)
lambda=0.6*10^-2; //wavelength (in m) of light
N=10; //number of slits
//calculation
theta1=asind(lambda/a_plus_b); //angular position of first maximum (in degrees)
dtheta1=tand(theta1)/N; //half width of first maximum (in degres)
theta2=asind(2*lambda/a_plus_b); //angular position of second maximum (in degrees)
dtheta2=tand(theta2)/(2*N); //half width of second maximum (in degrees)
printf("\n(i)angular position of first minimum is %0.2f degrees",theta1)
printf("\nangular position of second minimum is %d degrees",theta2)
printf("\n(ii)half width of first maximum is %0.2f degrees",dtheta1*180/%pi)
printf("\nhalf width of second maximum is %0.2f degrees",dtheta2*180/%pi)

