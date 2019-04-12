//Example 10_6
clc;
clear;
close;

//Given data :
h=2.4;// Central height in m
b=12;// Formation width in m
s=1.5;// side slope
l=200;// Length in m
A=h*(b+(s*h));// Area in sq. m
V=A*l;// Volume in cubic m
disp(V,"Volume in cubic m");
