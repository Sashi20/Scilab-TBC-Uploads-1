clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.19
//calculation of n and diameter of the ring
//given data
lambda1=6560; //first wavelength of light (in Armstrong)
lambda2=5248; //second wavelength of light (in Armstrong)
R=0.8; //radius of curvature (in m)
//calculation
n=lambda2/(lambda1-lambda2); //number of dark ring
D_n=sqrt(4*n*lambda1*10^-10*R); //diameter of the ring (in m)
disp(n,'n is')
printf("\ndiameter of ring is %0.3f mm",D_n*10^3)
