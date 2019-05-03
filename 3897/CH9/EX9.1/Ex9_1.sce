clc; clear;
// Example 9.1
// Page 256
// Given data
A=5; // drainage basin area, ac
i=3; // rainfall intensity, inch/hr
C=0.4; // runoff coefficient
//estimation
Q=C*i*A; // peak rate, ft^3/s, from eq 9-1
printf('The peak rate of runoff = %f ft^3/s',Q)
clear




