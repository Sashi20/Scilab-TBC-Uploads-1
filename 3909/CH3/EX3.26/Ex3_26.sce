clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.26
//calculation of number of lines per cm
//given data
W=2.5; //width of grating (in cm)
lambda1=5890; //wavelength (in Armstrong) of line D1
lambda2=5896; //wvelength (in Armstrong) of line D2
n=2; //second order
//calculation
lambda=(lambda1+lambda2)/2; //average wavelength (in m)
dlambda=lambda2-lambda1; //difference of wavelengths (in m)
N=lambda/(n*dlambda); //number of lines
N_dash=N/W; //number of lines per cm 
printf("\nnumber of lines per cm is %3.1f",N_dash)
//the answers vary due to round off error
