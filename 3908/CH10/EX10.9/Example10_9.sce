//Example 10_9
clc;
clear;
close;

//Given data :
l=120;// Length in m
s=2;// Side slope
r=20;// Transverse slope
b=5;// Formation width in m
h=2.2;// Central height in m
// Area=(s*((b/2)^2) + r^2*((b*h)+(s*h^2)))/((r^2)-(s^2))
a=s*((b/2)^2);
b=r^2*((b*h)+(s*h^2));
c=(r^2)-(s^2);
A=(a+b)/c;// Area in sq. m
V=A*l;// Volume of earthwork in cubic m
disp(V,"Volume of earthwork in cubic m");
