clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.28
//calculation of (a)resolving power of grating in the first three orders (b)wavelength separation
//given data
W=4; //width per cm
N_dash=3000; //number of lines/cm
n=3; //third order
lambda=400*10^-9; //wavelength (in m) of light
//calculation
N=W*N_dash; //number of lines
RP_I=1*N; //resolving powder of first order
RP_II=2*N; //resolving power of second order
RP_III=3*N; //resolving power of third order
dlambda=lambda/(n*N); //wavelength separation (in m)
//result
printf("\n(a)resolving power of first order is %d",RP_I)
printf("\nresolving power of second order is %d",RP_II)
printf("\nresolving power of third order is %d",RP_III)
printf("\n(b)wavelength separation is %0.3f Armstrong",dlambda*10^10)
//The answers vry due to round off error
