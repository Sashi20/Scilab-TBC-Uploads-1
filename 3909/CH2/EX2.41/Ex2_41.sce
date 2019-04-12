clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.41
//calculation of specific rotation
//given data
muL_minus_muR=7*10^-5; //difference of refractive indices between left and right circular polarizations
lambda=6000*10^-10; //wavelength (in m) of light 
pi=180; //value of pi (in degrees)
//calculation
S=pi/lambda*(muL_minus_muR)*10^-3; //specific rotation
printf("\nspecific rotation is %d deg/mm",S)
