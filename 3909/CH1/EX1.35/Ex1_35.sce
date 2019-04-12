clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.35 
//calculation of difference between wavelengths
//given data
x=0.02945*10^-3; //distance (in m) moved by mirror
lambda=5893*10^-10; //wavelength (in m) of light
//calculation
del_lambda=lambda^2/(2*x); //difference between wavelengths (in m)
printf("\ndifference between wavelengths is %1.2f Armstrong",del_lambda*10^10)
//the answer provided in the textbook is wrong
