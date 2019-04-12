//Example 10_4
clc;
clear;
close;

//Given data :
b=9.2;// Formation width in m
s=2;// Side slope
r1=8;// Transverse slope of higher half
r2=15;// Transverse slope of lower half
h=2.15;// Height at mid-section in m
h1=((h*r1)-(b/2))/(r1+s);// Height 1 in m
h2=((b/2)+(h*r2))/(r2-s);// Height 2 in m
w1=(b/2)+(h1*s);// Width 1 in m
w2=(b/2)+(h2*s);// Width 2 in m
A=((h1+h2)*b/4)+((w1+w2)*h/2);// Area in sq. m
disp(A,"Area in sq. m");
