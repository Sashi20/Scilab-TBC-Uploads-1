//Example 35_1
clc;
clear;
close;

//Given data :
i=0.007;// Hydraulic gradient causing water flow
k=2/10000;// Coefficient of permeability in m/sec
n=35/100;// Porosity
L=1.5*1000;// Distance between drinking water tube well and injection well in m
v=k*i;// in m/sec (From Darcy's law)
vs=v/n;// Seepage velocity in m/sec
t=L/(vs*365*24*60*60);// Time taken for liquid waste to reach the drinking water tube well in years
disp(round(t),"Time taken for liquid waste to reach the drinking water tube well in years");
