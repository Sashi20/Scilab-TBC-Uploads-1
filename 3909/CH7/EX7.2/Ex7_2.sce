clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.2
//calculation of pulse amplitude
//given data
W=35; //energy required per ion pair (in eV)
C=10^-10; //capacitance (in F)
E0=10^6; //charge (in eV)
e=1.602*10^-19; //value of charge (in C)
//calculation
n0=E0/W; //number of ion pairs 
V0=(n0*e)/C; //pulse amplitude (in V)
printf("\npulse amplitude is %0.1f microvolt",V0*10^6)
