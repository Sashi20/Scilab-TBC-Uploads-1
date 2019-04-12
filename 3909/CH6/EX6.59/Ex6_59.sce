clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.59
//calculation of mass of electron
//given data
E=1.5; //kinetic energy (in MeV)
c=3*10^8; //speed (in m/s) of light
m0=9.11*10^-31; //rest mass (in kg) of electron
//calculation
m0csq=(m0*c^2)/(1.6*10^-13)
m=((m0csq+E)*1.6*10^-13)/c^2
printf("\nmass of electron is %2.1e kg",m)
//the answers vary due to round off error
