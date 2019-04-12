//Example 10_1
clc;
clear;
close;

//Given data :
b=6;// Width of subgrade in m
h=1.85;// Height at centre in m
s=2;// Side slope
a=b+(2*h*s);// Top width in m
A=(a+b)*(h/2);//  Area of section in sq. m
disp(A,"Area of section in sq. m");
