clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.10
//calculation of depth of scratches
//given data
lambda=5350*10^-10; //wavelength (in m) of light
//calculation
t=4/10*lambda/2; //depth (in m) of scratches
printf("\ndepth of scratches is %0.1f micrometer",t*10^6)
