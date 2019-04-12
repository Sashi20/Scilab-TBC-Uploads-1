clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.9
//calculation of spectral purity factor, coherence length and coherence time
//given data
lambda=643.8; //wavelength of light (in nm)
del_lambda=0.001; //sectral spread (in nm)
c=3*10^8; //speed of light (in m/s)
//calculation
Q=round(lambda/del_lambda); //spectral purity factor 
l_c=Q*lambda*10^-9; //coherence length (in m)
tau_c=l_c/c; //coherence time (in s)
printf("\nSpectral purity factor is %d",Q)
printf("\nCoherence length is %0.1f cm",l_c*10^2)
printf("\nCoherence time is %4.2e s",tau_c)
