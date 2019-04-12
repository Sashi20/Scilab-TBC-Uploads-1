clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.40
//calculation of minimum number of lines of grating
//given data
lambda1=589.593*10^-9; //first wavelength of sodium D lines (in m)
lambda2=588.996*10^-9; //second wavelength of sodium D lines (in m)
n=1; //order of grating
//calculation
lambda=(lambda1+lambda2)/2; //average wavelength of both thewavelengths of sodium D lines (in m)
d_lambda=lambda1-lambda2; //difference of both the wavelengths (in m)
N=lambda/(n*d_lambda); //minimum number of lines of grating
printf("\nminimum number of lines of grating is %d",N)
//the answers vary due to round off error
