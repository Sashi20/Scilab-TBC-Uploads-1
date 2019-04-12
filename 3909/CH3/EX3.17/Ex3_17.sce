clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.17
//calculation of (i)highest order spectrum and (ii)longest wavelength of light
//given data
a_plus_b=10^-2/6000; //number of lines per m
theta=%pi/2; //maximum angle (in degrees)
lambda=4000; //wavelength of light (in Armstrong)
n=a_plus_b/(lambda*10^-10); //highest order of spectrum
n1=1; //minimum order of spectrum
lambda_max=round((a_plus_b)*sin(theta)*10^10/n1); //maximum wavelength (i Armstrong)
printf("\n(i)Highest order of spectrum is %d",n)
printf("\n(ii)Longest wavelength of light is %5.2d Armstrong", lambda_max)
