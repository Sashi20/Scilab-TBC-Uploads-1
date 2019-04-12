clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.25
//calculation of minimum number of lines per cm in a half inch wide grating
//given data
lambda_D1=5896*10^-10; //wavelength (in m) of D1 line
lambda_D2=5890*10^-10; //wavelength (in m) of D2 line
W=1.27; //width of grating (in cm)
//calculation
lambda=(lambda_D1+lambda_D2)/2; //average wavelength (in m) of light
dlambda=lambda_D1-lambda_D2; //difference between the two wavelengths (in m)
N=lambda/dlambda; //number of lines
N_dash=N/W; //number of lines per cm in a half inch wide grating
printf("\nnumber of lines per cm in a half inch wide grating is %1.2f",N_dash)
//the answers vary due to round off error
