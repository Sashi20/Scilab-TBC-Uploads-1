clc; clear;
// Example 8.2
// Page 229
// Given data
Q=400; // sewage flow, L/d
d=25; // population density, people/ha
A=100; // area, ha
//estimation
P=4*Q; // peak flow, L/d per person
DQ=A*d*P; // design flow rate for the reach, L/d
DQ=DQ/(24*3600); // design flow rate for the reach, L/s
printf(' The design flow rate for the reach = %f L/s',DQ)
clear




