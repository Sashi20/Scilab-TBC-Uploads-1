clc; clear;
// Example 2.13
// Page 38
// Given data
Q=1.0; // flow rate in cfs
D=8; // diameter in inch
L=1; //mile
//estimation
Q=Q*7.48*60; // flow rate, gpm
S=0.0064; // from nomograpch for given D and Q values
L=5280; // ft
hl=S*L; // ft
P=0.43*hl; // pressure drop, psi/mi, using equation 2-2b
printf('The pressure drop P = %f psi/mi',P)
clear




