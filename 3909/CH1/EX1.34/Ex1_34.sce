clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.34
//calculation of (i)angular radius of 10th bright fringe (ii) change of pathlength
//given data
m=10; //tenth bright fringe
lambda=5000*10^-10; //wavelength (in m) of light
d=2.5*10^-3; //difference in the pathlengths (in m)
n=60; //number of fringes
//calculation
theta=acosd(1-(lambda*(m-1))/(2*d)); //angular radius (in degrees)
del_d=n/2*lambda; //change of pathlength (in m)
printf("\n(i)angular radius is %0.2f degrees",theta)
printf("\n(ii)change of pathlengh is %0.3f mm",del_d*10^3)
