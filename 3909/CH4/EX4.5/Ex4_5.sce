clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.5
//calculation of spectral purity of line
//given data
lambda=643.8*10^-9; //wavelength (in m)
tau_c=10^-9; //coherent time (in sec)
c=3*10^8; //speed of light (in m/s)
//calculation
del_lambda=lambda^2/(c*tau_c); //spectral spread (in nm)
sp=lambda/del_lambda; //spectral purity of the line 
printf("\nThe spectral purity of the line is %d",sp)
//the answer provided in the textbook is wrong
