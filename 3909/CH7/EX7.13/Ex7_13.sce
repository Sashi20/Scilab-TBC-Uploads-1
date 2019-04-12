clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.13
//calculation of dead time of the counter
//given data
nu=80/100; //efficiency of GM counter
n=6000/60; //number of counts per minute
//calculation
t_d=(1-nu)/n; //dead time of the counter (in s)
disp(t_d*10^3,'dead time of the counter (in ms) is')
