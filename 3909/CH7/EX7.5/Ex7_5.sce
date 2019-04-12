clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.5
//calculation of change in the voltage of condensor
//given data
d=5; //distance moved (in cm)
n_av=3*10^4; //average number of ion pairs
e=1.602*10^-19; //value of charge (in C)
c=5*10^-12; //capacitance (in F)
//calcultion
n=d*n_av
q=n*e; //charge (in C) deposited on the condenser
V0=q/c; //change in the voltage of condensor (in V)
printf("\nchange in the voltage of condensor is %0.1f mV",V0*10^3)
