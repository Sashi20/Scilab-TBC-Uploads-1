clc; clear;
// Example 7.9
// Page 201
// Given data
e=50; // efficiency, percent
P_in=150; // required power, kW
C=0.15; // power cost, USD
T=8; // duration, h
//estimation 
P=P_in/e*100; // power consumption, kW
E=P*T; // energy consumed in 8 hrs, kW-h
C_op=E*C; // cost of operation, USD
printf('The cost of operation = %f USD',C_op)
clear




