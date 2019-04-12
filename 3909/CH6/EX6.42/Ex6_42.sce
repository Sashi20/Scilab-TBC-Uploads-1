clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.42
//calculation of momentum of a proton
//given data
c=3*10^8; //speed (in m/s) of light
m0=1.67*10^-27; //mass (in kg) of a proton
v=0.86*c; //speed (in m/s) of a proton
//calculation
p=(m0*v)/sqrt(1-v^2/c^2); //momentum (in kg m/s) of proton
printf("\nmomentum of a proton is %d MeV/c",p*10^-6/(5.36*10^-28))
//the answers vary due to round off error
