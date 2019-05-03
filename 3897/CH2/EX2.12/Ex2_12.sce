clc; clear;
// Example 2.12
// Page 38
// Given data
hl=10; // head loss, ft per 1000 ft of pipeline
D=12; // diameter, inch
C=100; // from Hazen/Williams equation
// estimation
S=hl/1000; // unitless quantity
Q=0.28*C*D^2.63*S^0.54; // flow rate in pipe, from equation 2-9
printf('The flow rate in pipe = %f gpm',Q)
clear



