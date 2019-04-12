clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.15
//calculation of (i)true count rate (ii)observed count rate when source strength is increased bya factor of 10
//given data
t_d=200*10^-6; //dead time of counter (in s)
n=1000; //observed count rate
//calculation
N=n/(1-n*t_d); //count rate
T=N+sqrt(N); //actual count rate (per minute)
n_dash=(N*10)/(1+N*10*t_d); //observed count rate when source strength is increased bya factor of 10
printf("\n(i)true count rate is %d",T)
printf("\n(ii)observed count rate when source strength is increased is %4.1f",n_dash)
