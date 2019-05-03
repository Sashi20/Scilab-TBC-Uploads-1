clc; clear;
// Example 9.5
// Page 261
// Given data
A=1000; // drainage basin area, ac
Tc=66; // time of concentration, min
I=7.5; // rainfall intensity, inch
//estimation
R=4; // for I=7.5, from fig 9.5
Tc=Tc/60; // in hr
A=A/640; // drainage basin area, mi^2
q=300; // unit peak discharge, csm/in, for Tc=1.1 from fig 9.6
Q=q*A*R; // peak rate of runoff, ft^3/s, from eq 9.3
printf('The peak rate of runoff = %f ft^3/s',Q)
clear




