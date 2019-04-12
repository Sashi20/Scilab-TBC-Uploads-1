//Example 10_8
clc;
clear;
close;

//Given data :
b=7.5;// Formation width in m
s=2;// side slope
i=30;// Interval in m
h1=1.8;// Height at centre at 0 m in m
h2=2.175;// Height at centre at 30 m in m
h3=2.55;// Height at centre at 60 m in m
h4=2.925;// Height at centre at 90 m in m
h5=3;// Height at centre at 120 m in m
A1=h1*(b+(s*h1));// Area at 0 m in sq. m
A2=h2*(b+(s*h2));// Area at 30 m in sq. m
A3=h3*(b+(s*h3));// Area at 60 m in sq. m
A4=h4*(b+(s*h4));// Area at 90 m in sq. m
A5=h5*(b+(s*h5));// Area at 120 m in sq. m

// By prismoidal formula
V=(i/3)*(A1+A5+(4*(A2+A4))+(2*A3));// Total volume in cubic m
disp(V,"Total volume by prismoidal formula in cubic m");

// By trapezoidal formula
V=(i/2)*(A1+A5+(2*(A2+A3+A4)));// Total volume in cubic m
disp(V,"Total volume by trapezoidal formula in cubic m");
// The answer provided in the textbook is wrong
