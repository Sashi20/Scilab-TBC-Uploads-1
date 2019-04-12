clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.24
//to check if transmission grating with 1200 elements resolve principal maxima in the first order
//given data
lambda1=589.0*10^-9; //first wavelength (in m) of sodium discharge lamp
lambda2=589.6*10^-9; //second wavelength (in m) of sodium discharge lamp
n=1
lambda=(lambda1+lambda2)/2; //average wavelength (in m)
d_lambda=lambda2-lambda1; //difference between wavelengths 
N=lambda/(n*d_lambda); //minimum number of lines
printf("\nminimum number of lines needed to resolve given spectral lines is %3.1f",N)
if N<1200 then
    disp("spectral lines will be resolved in first order")
else
    disp("spectral lines will not be resolved in first order")
end

