clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.41
//to check if spectral lines will be resolved
//given data
//in first order
lambda1=5160.34; //first wavelength of spectral line a plane diffraction just resolves (in Armstrong)
lambda2=5160.85; //second wavelength of spectral line a plane diffraction just resolves (in Armstrong)
//calculation
lambda=(lambda1+lambda2)/2; //average wavelength (in Armstrong)
d_lambda=lambda2-lambda1; //difference of wavelengths (in Armstrong)
N=lambda/d_lambda; //number of lines
//in second order
lambda_1=8037.20; //first wavelength (in Armstrong)
lambda_2=8037.50; //second wavelength (in Armstrong)
lambda_dash=(lambda_1+lambda_2)/2; //average wavelength (in Armstrong)
n=2; //order of grating
dlambda=lambda_2-lambda_1; //difference of wavelengths (in Armstrong)
N_dash=lambda_dash/(n*dlambda); //number of lines
printf("\nfor first order number of lines is %d",N)
printf("\nfor first order number of lines is %d",N_dash)
if N>N_dash then
    disp("the given lines are resolved")
else
    disp("the given lines remain unresolved")
end
