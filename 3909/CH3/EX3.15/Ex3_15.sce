clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.15
//calculation of lines per cm
//given data
theta=%pi/6; //angle of diffraction (in degrees)
lambda=6*10^-5; //wavelength of light used (in cm)
n=1; //order of line
//calculation
a_plus_b=sin(theta)/(n*lambda); //number of lines per cm
printf("\nThe number of lines per cm is %2d",a_plus_b)
