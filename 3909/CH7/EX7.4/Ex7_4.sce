clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.4
//calculation of ionization current
//given data
n=15; //number of alpha particles
E=5*10^6; //energy of alpha particles (in eV)
e=1.6*10^-19; //value of charge
E_dash=35.2; //energy (in eV) needed to produce ion pair
//calculation
TE=n*E; //total energy of alpha particles (in eV)
N=TE/E_dash; //number of ion pairs produced
dq_by_dt=N*e; //ionization current (in Ampere)
printf("\nionization current is %1.3f pA",dq_by_dt*10^12)
