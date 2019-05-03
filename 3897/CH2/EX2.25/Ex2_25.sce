clc; clear;
// Example 2.25
// Page 46
// Given data
H=100; // head on the weir, mm
// estimation
H=H*(1/25.4)*(1/12); // head in ft
Q=2.5*H^2.5; // discharge, in ft^3/s, from equation 2-12
Q=Q*28.32; // discharge in L/s
printf('The discharge Q = %f L/s\n',Q)
clear







