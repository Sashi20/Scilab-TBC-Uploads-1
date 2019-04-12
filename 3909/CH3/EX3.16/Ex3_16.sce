clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.16
//calculation of number of lines on grating
//given data
W=5; //width of diffraction grating (in cm)
lambda1=6000; //wavelength (in Armstrong) of one line
lambda2=4500; //wavelength (in Armstrong) of another line
theta=%pi/6; //angle of diffraction (in degrees)
//calculation
n=lambda2*10^-10/((lambda1-lambda2)*10^-10); //order of spectrum
a_plus_b=n*lambda1*10^-10/sin(theta); //number of lines per m
N=round(W*10^-2/a_plus_b); //number of lines
printf("\nNumber of lines on grating are %0.3d",N)
