clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.33 
//calculation of change in path length
//given data
lambda=5000*10^-10; //wavelength (in m) of light
n=50; //number of fringes
//calculation
x=(n*lambda)/2; //change in path length (in m)
printf("\nchnge in path length is %1.4f mm",x*10^3)
//the answer provided in the textbook is wrong
