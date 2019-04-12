clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.21
//calculation of wavelength of laser emitted out
//given data
h=6.626*10^-34; //planck's constant (in m sq kg/s)
c=3*10^8; //speed of light (in m/s)
E=1.85; //energy (in eV)
//calculation
lambda=(h*c)/(E*1.602*10^-19); //wavelength (in m)
printf("\nWavelength of laser emitted out is %d Armstrong",lambda*10^10)
