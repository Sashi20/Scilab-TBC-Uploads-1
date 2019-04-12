clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.25
//calculation of period of time measured by moving observer
//given data
T0=3; //proper period of pendulum (in s)
c=3*10^8; //speed of light (in m/s)
//calculation
v=0.95*c; //speed of pendulum is 0.95 times speed of light
T=T0/sqrt(1-(v/c)^2); //period (in s) of time measured by moving observer
printf("\nperiod of time measured by moving observer is %1.2f s",T)
//the answers vary due to round off error
