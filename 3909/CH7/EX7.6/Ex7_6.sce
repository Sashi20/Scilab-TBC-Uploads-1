clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.6
//calculation of output pulse height
//given data
E=11*10^6; //energy (in eV) of alpha particles
E_dash=35.2; //energy (in eV) needed to produce ion pair
M=1000; //multiplication factor
e=1.6*10^-19; //value of charge
C=30*10^-12; //effective capacity between the wire and the earth (in F)
//calculation
N_T=E/E_dash; //total no. of ion pairs produced
N=N_T*M; //number of secondary ions produced
q=N*e; //charge collected by capacitor (in C)
V_O=q/C; //pulse height (in V)
printf("\noutput pulse height is %1.2f V",V_O)
