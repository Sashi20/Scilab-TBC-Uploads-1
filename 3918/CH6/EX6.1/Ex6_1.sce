//Example 6_1
clc;
clear;
close;

//Given data :
H1=3500;// Height1 in mm
H2=550;// Height2 in mm
L=300;// Length in mm
A=10000;// Area in mm^2
V=1000000;// Volume of jar in mm^3
t=50;// Time taken to fill graduated jar in seconds
DH=H1-H2;// Difference in Heights(H1-H2) in mm
k=(V/(t*A))*(L/DH)*(1/1000);// Permeability of silty sand sample in the permeameter in m/sec
disp(k,"Permeability of silty sand sample in the permeameter in m/sec");
// The answers vary due to round off error
