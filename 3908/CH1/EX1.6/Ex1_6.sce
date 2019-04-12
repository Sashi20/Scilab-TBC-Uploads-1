//Example 1_6
clc;
clear;
close;

//Given data :
n=3;// number of divisions(no unit)
l=0.002;// length in m
D=50;// distance in m
S=40;// sensitivity in s
R=l*206265/S;// radius of curvature in m
e=n*l*D/R;// error in staff reading in m
disp(e,"error in staff reading in m");
