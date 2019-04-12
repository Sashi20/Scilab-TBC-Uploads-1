clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.10
//calculation of ionization current
//given data
N=600/60; //count rate per minute
p=10^8; //number of electrons per count
e=1.6*10^-19; //value of charge (in C)
t=1; //time (in s)
//calculation
n=N*p; //total number of electrons 
q=n*e; //charge (in C)
I=q/t; //ionization current (in Ampere)
printf("\nionization current is %1.1e Ampere",I)
