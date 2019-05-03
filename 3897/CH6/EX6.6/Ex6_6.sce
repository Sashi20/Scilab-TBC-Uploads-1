clc; clear;
// Example 6.6
// Page 166
// Given data
Q=6; // flow rate, ML/d
R=2.8; // filtration rate, L/m^2
//estimation
Q=Q*10^6*(1/24)*(1/3600); // flow rate, L/s
A=Q/R; // require surface area, m^2
S=sqrt(A); // side dimension, m
printf('The required surface area = %f m^2\n',A)
printf('The sie dimensin of box = %f m',S)
clear




