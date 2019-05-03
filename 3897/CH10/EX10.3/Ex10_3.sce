clc; clear;
// Example 10.3
// Page 293
// Given data
P_in=250; // conc of BOD flowing in, mg/L
e=60; // removal efficiency, %
//estimation
P_out=P_in-((e*P_in)/100); // expected average effluent TSS conc, mg/L, eq 10-1
printf('The expected average effluent TSS concentration = %f mg/L',P_out)
clear




