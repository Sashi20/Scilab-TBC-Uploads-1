clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.40
//calculation of distance to be moved by the mirror that fringes disappear
//given data
lambda1=4882*10^-10; //first wavelength (in m) of light
lambda2=4886*10^-10; //second wavelength (in m) of light
//calculation
lambda_av=(lambda1+lambda2)/2; //average wavelength (in m)
del_lambda=lambda2-lambda1; //difference of wavelength (in m)
d=lambda_av^2/(4*del_lambda); //distance (in m) to be moved by the mirror that fringes disappear
printf("\ndistance to be moved by the mirror that fringes disappear is %0.3f mm",d*10^3)
