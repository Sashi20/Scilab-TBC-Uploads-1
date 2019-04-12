clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.43
//calculation of fringe spacing
//given data
n=1; //order of grating
lambda=632.8*10^-9; //wavelength (in m) of laser
theta=0.1/1
//calculation
d=lambda/theta; //fringe spacing (in m)
printf("\nfringe spacing is %1.3f micrometer",d*10^6)
