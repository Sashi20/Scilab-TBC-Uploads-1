clc; clear;
// Example 9.8
// Page 270
// Given data
Tc=30; // time of concentration, min
Q=5; // peak runoff rate, m^3/s
A=10000; // basin detention , m^3
//estimation
Tc=Tc*60; // time of concentratio, s
TRV=1.5*Tc*Q; // total rainfall volume, m^3, from eq 9-6
SF=A/TRV; // storage factor
FF=1-SF; // flow factor
P=FF*Q; // peak outflow, m^3/s
printf('The peak outflow rate = %f m^3/s',P)

clear




