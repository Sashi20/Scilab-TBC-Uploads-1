clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.21
//calculation of distance between two stars
//given data
D=0.5; //diameter (in m) of objective of a telescope
lambda=5600*10^-10; //wavelength (in m) of light
d=5*365*24*60*60*3*10^8; //distance (in m) of two stars from earth
//calculation 
theta=(1.22*lambda)/D; //resolving limit (in radians)
x=theta*d; //distance (in m) between two stars
printf("\ndistance between two stars is %1.2e m",x)
//the answer provided in the textbook is wrong
