clc; clear;
// Example 2.14
// Page 39
// Given data
Q=30; // flow rate, L/s
P=10; // pressure drop, kPa
L=1; // in km
// estimation
hl=0.10*P; // m/km, using equation 2-3a
L=1000; // in m
S=hl/L; // unitless quantity
D=310; // pipe diameter, mm, using nomograph for given Q and S values
printf('The diameter of the pipe D = %f mm',D)
clear



