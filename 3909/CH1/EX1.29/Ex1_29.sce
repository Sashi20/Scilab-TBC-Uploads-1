clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.29
//calculation of diameter of nth dark ring
//given data
lambda1=6000*10^-10; //wavelength (in m) of light
lambda2=5000*10^-10; //wavelength (in m) of light
R=0.90; //radius of curvature (in m)
//calculation
n=(lambda2*R)/((lambda1-lambda2)*R); //order of dark ring
D_n=sqrt(4*n*lambda1*R); //diameter (in m) of nth ring
printf("\nThe diameter of nth ring is %0.3f mm",D_n*10^3)
//the answers vary due to round off error
