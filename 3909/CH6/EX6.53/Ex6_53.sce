clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.53
//calculation of mass of electron 
//given data
m0=9.1*10^-31; //rest mass of electron (in kg)
KE=2*10^6*1.6*10^-19; //kinetic energy (in J)
c=3*10^8; //speed of light (in m/s)
//calculation
m=m0+KE/c^2; //mass (in kg) of an electron
printf("\nmass of an electron is %2.2e kg",m)
//the answers vary due to round off error
