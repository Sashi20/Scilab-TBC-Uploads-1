clc;clear;
//example 3.4
//OS windows 7
//scilab 6.0.1
//calculation of lambda1 and lambda2
//given data
f=1; //focal length (in m) of lens
a=0.04*10^-2; //width (in m) of slit
y_d_4=0.5*10^-2; //position (in m) of fourth minima corresposding to lambda1
y_d_5=0.5*10^-2; //position (in m) of fifth minima corresposding to lambda2
//calculation
lambda1=(y_d_4*a)/(4*f); //wavelength (in m) corresponding to fourth minima
lambda2=(y_d_5*a)/(5*f); //wavelength (in m) corresponding to fifth minima
printf("\nlambda1 is %d Armstrong",lambda1*10^10)
printf("\nlambda2 is %d Armstrong",lambda2*10^10)
