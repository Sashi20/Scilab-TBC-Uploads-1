clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.9
//calculation of actual count rate
////given data
n=1.51*10^4; //number of counts per minute
t_d=(250*10^-6)/60; //dead time (in min)
//calculation
N=n/(1-n*t_d); //count rate (per minute)
T=N+sqrt(N); //total count rate (per minute)
printf("\nactual count rate is %d per minute",T)
//the answers vary due to round off error
