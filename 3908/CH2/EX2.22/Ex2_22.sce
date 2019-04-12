//Example 2_22
clc;
clear;
close;

//Given data :
l=0.025;// Minimum length that can be plotted in paper in m
// (a)The linear accuracy is 1 in 30 and scale is 1 cm = 20 m
r=30;
s=20;
L=l*r*s/sqrt(2);// Maximum length of offset in m
disp(L,"(a) Maximum length of offset in m");

// (b)The linear accuracy is 1 in 50 and scale is 1 in 3000
r=50;
s=30;
L=l*r*s/sqrt(2);// Maximum length of offset in m
disp(L,"(b) Maximum length of offset in m");
// The answers vary due to round off error
