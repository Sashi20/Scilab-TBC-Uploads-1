clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.56
//calculation of total energy and kinetic energy
//given data
c=3*10^8; //speed (in m/s) of light
m0=(9.1*10^-31)/(1.6*10^-13); //rest mass (in MeV) of electron
//calculation
v=0.25*c; //speed (in m/s) of electron
m=m0/sqrt(1-v^2/c^2); //mass (in kg)
E=(m0*c^2)/sqrt(1-v^2/c^2); //total energy (in MeV)
K=m*c^2-m0*c^2; //kinetic energy (in MeV)
printf("\ntotal energy is %1.3f MeV",E)
printf("\nkinetic energy is %1.3f MeV",K)
//the first part of answer varies due to round off error
