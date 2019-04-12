//Example 10_7
clc;
clear;
close;

//Given data :
b=8.8;// Formation width in m
s=1.5;// side slope
i=20;// Interval in m
h1=1.8;// Height at centre at 0 m in m
h2=2.4;// Height at centre at 20 m in m
h3=3.0;// Height at centre at 40 m in m
h4=3.6;// Height at centre at 60 m in m
A1=h1*(b+(s*h1));// Area at 0 m in sq. m
A2=h2*(b+(s*h2));// Area at 20 m in sq. m
A3=h3*(b+(s*h3));// Area at 40 m in sq. m
A4=h4*(b+(s*h4));// Area at 60 m in sq. m
V=i*(((A1+A4)/2)+A2+A3);// Total volume in cubic m
disp(V,"Total volume in cubic m");
// The answers vary due to round off error
