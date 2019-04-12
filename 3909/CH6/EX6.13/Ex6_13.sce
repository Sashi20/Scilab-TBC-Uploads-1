clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.13
//calculation of speed of muons
//given data
T0=2.2*10^-6; //average life (in s) of muons
T=15.6*10^-6; //time (in s)
c=3*10^8; //speed of light (in m/s)
//calculation
v=c*sqrt(1-T0^2/T^2); //velocity of muons (in m/s)
printf("\nvelocity of muons is %1.2e m/s",v)
