clc; clear;
// Example 9.2
// Page 257
// Given data
A=2; // drainage basin area, ha
i=75; // rainfall intensity, mm/hr
C=0.4; // runoff coefficient
//estimation
A=A*10000; // drainage basin area, m^2
i=0.075; // rainfall intensity, m^2/h
Q=C*i*A; // peak rate, ft^3/s, from eq 9-1
printf('The peak rate of runoff = %f m^3/h',Q)
clear




