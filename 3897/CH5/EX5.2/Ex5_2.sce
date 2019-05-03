clc; clear;
// Example 5.2
// Page 129
// Given data
cs=25; // temp, cel
Qs=100; // stream discharge, cfs
cw=65; // temp, cel
cd=27; // max temp, cel
//estimation
Qw=(cs-cd)*Qs/(cd-cw) // dischage of warm water, from eq 5-1, cfs
printf('The discharge of warm water = %f cfs',Qw)
clear




