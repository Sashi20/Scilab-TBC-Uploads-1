//Example 2_16
clc;
clear;
close;

//Given data :
l=30;// Length of tape in m
alpha=11.5*10^-6;// Coefficient of thermal expansion in per degree celcius
T=45;// Temperature during measurement in degree celcius
T0=20;// Standardized temperature in degree celcius
TC=l*alpha*(T-T0);// Temperature Correction in m
disp(TC,"Temperature Correction in m");
P0=100;// Tension pull during measurement in N
P=150;// Tension pull at standardized temperature in N
EP=P-P0;// Effective Tension pull in N
A=4*10^-6;// Area of cross section of tape in sq m
E=200*10^9;// Youngs modulus in N/sq m
CP=EP*l/(A*E);// Correction due to pull in m
disp(CP,"Correction due to pull in m");
uw=78600;// Unit weight of tape material in N/cubic m
wl=l*A*uw;// Weight of tape in N
disp(wl,"Weight of tape in N");
CS=l*(wl^2)/(24*P^2);// Correction for sag in m
disp(CS,"Correction for sag in m");
TCL=TC+CP-CS;// Total Correction per tape length in m
disp(TCL,"Total Correction per tape length in m");
// The answers vary due to round off error
