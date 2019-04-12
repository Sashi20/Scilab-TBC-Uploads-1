//Example 18_1
clc;
clear;
close;

//Given data :
k=1/100000000;// Permeability in m/sec
L=10;// Thickness of clay layer in m
A=1;// Lake bed area in m^2
DH=10;// Difference in height in m
Q=k*(DH/L)*A*60*60;// Discharge in m^3/hr
disp(Q,"Discharge in m^3/hr");
// The answers vary due to round off error
