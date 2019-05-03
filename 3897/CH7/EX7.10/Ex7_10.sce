clc; clear;
// Example 7.10
// Page 205
// Given data
Q=100; // flow rate, L/s
P=150; // pressure, kPa
D=250; // diameter, mm, from figure
L=2000; // length, m, from figure
S=0.024; // from Hazen-Williams nomograph
//estimation
hL=S*L; // head loss, m
P=0.1*P; // meter of pressure head
Ph=P+48; // pressure head, m, from figure 7.26
rP=9.8*Ph; // required pressure, kPa
printf('The required pressure = %f kPa',rP)
clear




