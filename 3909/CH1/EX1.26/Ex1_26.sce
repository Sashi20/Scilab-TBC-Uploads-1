clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.26
//calculation of diameter of nth ring
//given data
lambda1=6000*10^-10; //wavelength (in m)
lambda2=4500*10^-10; //another wavelength (in m)
R=0.9; //radius of curvature (in m)
//calculation
n=4*lambda2*R/(4*lambda1*R-4*lambda2*R); //order of ring
D=sqrt(4*n*lambda1*R); //diameter (in m) of nth ring
printf('\ndiameter of nth ring is %0.4f cm',D*10^2)
//The answers vary due to round off error 
