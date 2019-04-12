clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.4
//calculation of coherent length, coherent time and Q value
//given data
lambda1=0.4*10^-6; //first wavelength (in m)
lambda2=0.8*10^-6; //second wavelength (in m)
c=3*10^8; //speed of light (in m/s)
//calculation
lambda=(lambda1+lambda2)/2; //mean wavelength (in m)
del_lambda=lambda2-lambda1; //difference between wavelengths(in m)
Q=lambda/del_lambda; //Q value
l_c=Q*lambda; //coherent length (in m)
tau_c=l_c/c; //coherent time (in sec)
printf("\nQ value is %1.1f",Q)
printf("\ncoherent length is %1.1f micrometer",l_c*10^6)
printf("\ncoherent time is %1.0e s",tau_c)
//answer provided in the textbook is wrong
