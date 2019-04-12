clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.17
//calculation of minimum number of ions present
//given data
lambda=720; //wavelength (in nm)
E=0.1; //energy (in J)
h=6.62*10^-34; //planck's constant (in m sq kg/s)
c=3*10^8; //speed of light (in m/s)
//calculation
nu=c/(lambda*10^-9); //frequency (in Hz)
n=E/(h*nu); //number of ions present
printf("Number of ions present is %1.3e",n)
