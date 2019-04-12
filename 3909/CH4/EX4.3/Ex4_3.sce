clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.3 
//calculation of (i)coherent length (ii)quality factor
//given data
lambda=6000*10^-10; //wavelength (in m)
del_nu=10^-2; //spectral width (in Hz)
c=3*10^8; //speed of light (in m/s)
//calculation
nu=c/lambda; //frequency (in Hz)
Q=nu/del_nu; //quality factor
l_c=Q*lambda; //coherent length (in m)
printf("\nquality factor is %1.0e",Q)
printf("\ncoherent length is %d km",l_c*10^-3)
//the answer provided in the txtbook is wrong
