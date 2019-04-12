clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.7
//calculation of height of pulse
//given data
E0=10*10^6; //energy (in eV)  of protons
W=34; //energy (in eV) required per ion pair
M=1000; //gas multiplication factor
e=1.6*10^-19; //electronic charge (in C)
R=10^4; //resistance (in ohm) between the electrodes
t=10*10^-6; //current pulse time (in s)
//calculation
n0=E0/W; //number of primary ions 
n_dash=n0*M; //total number of ions in proportionate region
q=n_dash*e; //charge on the electrodes (in C)
i=q/t; //current on the electrodes (in Ampere)
V0=i*R; //height of the pulse (in V)
printf("\nheight of the pulse is %0.3f V",V0)
