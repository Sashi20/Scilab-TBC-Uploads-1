clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.1
//calculation of coherent length and coherent time
//given data
lambda=4800*10^-10; //wavelength of light (in m)
n=25; //number of waves
c=3*10^8; //speed of light (in m/s)
//calculation
l_c=n*lambda; //coherent length (in metre)
tau_c=l_c/c; //coherent time (in s)
printf("\ncoherent length is %d micrometer",l_c*10^6)
printf("\ncoherent time is %1.0e s",tau_c)
