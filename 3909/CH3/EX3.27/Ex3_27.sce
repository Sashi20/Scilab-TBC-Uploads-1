clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.27
//calculation of (a) minimum number of lines required for grating (b) slit spacing for a grating
//given data
lambda1=531.62; //wavelength (nm) of light
lambda2=531.81; //wavelength (nm) of light
W=1.32; //number of lines (in cm)
//calculation
lambda=(lambda1+lambda2)/2; //average wavelength (in nm)
dlambda=lambda2-lambda1; //difference of wavelengths (in m)
n=1; //first order 
N=round(lambda/dlambda); //number of lines
a_plus_b=W*10^-2/N; //slit spacing for a grating (in m)
printf("\n(a)minimum number of lines required for grating is %d",N)
printf("\n(b)slit spacing for a grating is %0.2f micrometer",a_plus_b*10^6)
