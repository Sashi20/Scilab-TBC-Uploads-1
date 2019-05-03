clc; clear;
// Example 6.8
// Page 170
// Given data
Q=7.5; // flow, mgd
chl=0.5; // chlorine dose, mg/L
d=1; // duration, month
//estimation
lbd=8.34*Q*chl; // lb/d, eq 6-3b
N=lbd*30/100; // no of cylinder required
N=ceil(N)
printf('The number of cylinder required = %f per month',N)
clear




