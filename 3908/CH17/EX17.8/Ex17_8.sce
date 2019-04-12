//Example 17_8
clc;
clear;
close;

//Given data :
r=7;// Radius of the signal in cm
D=8560*100;// Distance between the stations A and B in cm
// (a) The observation was made on the bright portion of the signal
teta=50;// angle in degree
alpha=206205*r*(cosd(teta/2)^2)/D;// Alpha in seconds
disp(alpha,"(a) Alpha in seconds");
// (b) The observation was made on the bright line
alpha=206205*r*cosd(teta/2)/D;// Alpha in seconds
disp(alpha,"(b) Alpha in seconds");
// The answers vary due to round off error
