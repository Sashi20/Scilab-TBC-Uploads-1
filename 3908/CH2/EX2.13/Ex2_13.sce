//Example 2_13
clc;
clear;
close;

//Given data :
l=368.64;// Length of line in m
alpha=12*10^-6;// Coefficient of thermal expansion in per degree celcius
T=42;// Temperature during measurement in degree celcius
T0=20;// Standardized temperature in degree celcius
TC=l*alpha*(T-T0);// Temperature Correction in m
disp(TC,"Temperature Correction in m");
// The answers vary due to round off error
CL=l+TC;// Corrected length of line in m
disp(CL,"Corrected length of line in m");
// The answers vary due to round off error
