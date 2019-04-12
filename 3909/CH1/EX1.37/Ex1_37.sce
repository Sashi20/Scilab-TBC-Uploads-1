clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.37
//calculation of angular diameter of tenth bright fringe
//given data
m=10; //tenth bright fringe 
lambda=5896*10^-10; //wavelength (in m) of length
d=3*10^-3; //difference between path lengths
//calculation
theta=acosd(1-(lambda*(m-1))/(2*d)); //angular radius (in degrees)
twice_theta=2*theta; //angular diameter (in degrees)
printf("\nangular diameter is %0.2f degrees",twice_theta)
//the answers vary due to round off error
