//Example 17_3
clc;
clear;
close;

//Given data :
n=11;// Total number of lines
s=6;// Total number of stations
os=6;// Number of occupied stations
D=(n*2)-2;
C=(n-s+1)+(n-(2*s)+3);
x=(D-C)/D;// Value of (D-C)/D
disp(x,"Value of (D-C)/D");
