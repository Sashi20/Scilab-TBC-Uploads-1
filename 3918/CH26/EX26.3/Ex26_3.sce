//Example 26_3
clc;
clear;
close;

//Given data :
disp("a)");
w=8;// Width in m
h=3;// Height in m
l=2500;// Length in m
v=2000;// velocity of roller in m/hr
s=1.5/1;// Side slope
V=0.5*h*(w+(w+(2*h*s)))*l;// Volume of earth work in m^3
rw=1.8;// Roller width in m
t=0.45;// Compacted layer thickness in m
n=6;// Number of passes
O1=0.8*rw*v*t/n;// Output of 1 roller in m^3/hr
T=8*30;// Number of hours roller will work in hours
O1m=O1*T;// Output of one roller per month
N=V/O1m;// Number of rollers required
// One extra roller to take care of the breakdown
disp(round(N)+1,"    Hence minimum number of rollers required will be");

disp("b)");
// If each roller will remain idle for 40% time, then the output of the roller per month will be 60% of full output
O1m=0.6*O1m;// Output of one roller per month
N=V/O1m;// Number of rollers required
// One extra roller to take care of the breakdown
disp(round(N)+1,"    Hence minimum number of rollers required will be");
