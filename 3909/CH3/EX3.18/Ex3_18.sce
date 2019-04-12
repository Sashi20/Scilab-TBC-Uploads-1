clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.18
//calculation of number of lines per cm
//given data
lambda1=5400*10^-10; //wavelength (in m) of green light
lambda2=4050*10^-10; //wavelength (in m) of violet light
theta=30; //angle of diffraction (in degrees)
//calculation
n1=lambda2/(lambda1-lambda2); //order of light
//the above equation was derived from the formula n1*lambda1=n2*lambda2 where n2=n1+1
a_plus_b=(n1*lambda1)/sind(theta)*10^2; //grating lines (in cm)
n=1/a_plus_b; //number of lines per cm 
printf('\nnumber of lines per cm is %d',n)

