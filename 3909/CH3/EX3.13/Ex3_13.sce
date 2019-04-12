clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.13
//calculation of separation of lines in first order spectrum
//given data
lambda1=5000*10^-10; //first wavelength (in m)
lambda2=3200*10^-10; //second wavelength (in m)
a_plus_b=10^-2/10000; //grating lines per m
f=150*10^-2; //focal length (in m)
//calculation
theta1=asind(lambda1/a_plus_b); //first diffraction angle (in degrees)
theta2=asind(lambda2/a_plus_b); //second diffraction angle (in degrees)
x1=f*tand(theta1); //position of first diffraction angle (in m)
x2=f*tand(theta2); //position of second diffraction angle (in m)
x=x1-x2; //separation of lines in first order spectrum
printf("\nseparation of lines in first order spectrum is %0.2f cm",x*10^2)
//the answer provided in the textbook is wrong
