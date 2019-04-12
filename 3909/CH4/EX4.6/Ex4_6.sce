clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.6
//calculation of separation of two slits
//given data
lambda=5000*10^-10; //wavelength (in m) f light
theta=(32*%pi)/(180*60); //angle (in minutes) subtended by the sun on the earth
//calculation
l_w=lambda/theta; //separation of two slits (in m)
printf("\nseparation of two slits is %1.0e m",l_w)
