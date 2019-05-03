clc; clear;
// Example 7.3
// Page 195
// Given data
N1=2000; // impeller speed, rpm
N2=1500; // impeller speed, rpm
Q2=100; // discharge, L/s
H2=25; // discharge pressure, m
//estimation 
Q1=Q2*(N1/N2); // expected pump discharge, L/s, eq 7-3
H1=H2*(N1^2/N2^2); // expected discharge pressure, m, eq 7-4
printf('The expected pump discharge = %f L/s\n',Q1)
printf('The expected discharge pressure = %f m',H1)
clear




