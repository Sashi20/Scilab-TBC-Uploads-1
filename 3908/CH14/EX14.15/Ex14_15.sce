//Example 14_15
clc;
clear;
close;

//Given data 
f0=11.6;// Focal length of anallactic lens in cm
f=25;// Focal length of objective lens in cm
d=13.5;// Distance from objective lens to vertical axis in cm
K=100;// Multiplying constant
N=f0+(f*d/(f+d));// Distance between anallactic lens and objective lens in cm
disp(N,"Distance between anallactic lens and objective lens in cm");
// K=(f*f0)/((f+f0-N)*i)
i=(f*f0)/(K*(f+f0-N));// Stadia interval in cm
disp(i,"Stadia interval in cm");
// The answers vary due to round off error
