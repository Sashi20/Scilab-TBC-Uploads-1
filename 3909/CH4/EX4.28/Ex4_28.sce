clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.28
//calculation of refractive indices of core and cladding
//given data
NA=0.22; //numerical aperture
delta=0.012 //relative refractive index difference
//calculation
n1=NA/sqrt(2*delta); //refractive index of core
n2=n1-delta*n1; //refractive index of cladding
printf("\nrefractive index of core is %0.2f",n1)
printf("\nrefractive index of cladding is %0.2f",n2)

