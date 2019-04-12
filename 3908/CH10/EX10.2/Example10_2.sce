//Example 10_2
clc;
clear;
close;

//Given data :
// Area = {s*((b/2)^2)+((b/2)^2)*((b*h)+(s*h^2))}/((r^2)-(s^2))
s=1.5;// Side slope
b=8;// Width in m
h=2.8;// Height in m
r=4;// transverse slope
A = (s*((b/2)^2)+((b/2)^2)*((b*h)+(s*h^2)))/((r^2)-(s^2));// Area in sq. m
disp(A,"Area in sq. m");
