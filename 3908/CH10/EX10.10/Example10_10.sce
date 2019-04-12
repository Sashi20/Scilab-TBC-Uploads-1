//Example 10_10
clc;
clear;
close;

//Given data :
b=6;// Formation width in m
s=2;// side slope
i=20;// Interval in m
g1=214.2,r1=212.66;
g2=214.8,r2=213.16;
g3=215.1,r3=213.66;
g4=216.1,r4=214.16;
g5=216.9,r5=214.66;
g6=217.4,r6=215.16;
g7=218.2,r7=215.66;
h1=g1-r1;
h2=g2-r2;
h3=g3-r3;
h4=g4-r4;
h5=g5-r5;
h6=g6-r6;
h7=g7-r7;
A1=h1*(b+(s*h1));// Area at 0 m in sq. m
A2=h2*(b+(s*h2));// Area at 20 m in sq. m
A3=h3*(b+(s*h3));// Area at 40 m in sq. m
A4=h4*(b+(s*h4));// Area at 60 m in sq. m
A5=h5*(b+(s*h5));// Area at 80 m in sq. m
A6=h6*(b+(s*h6));// Area at 100 m in sq. m
A7=h7*(b+(s*h7));// Area at 120 m in sq. m

// By trapezoidal formula
V=(i/2)*(A1+A7+(2*(A2+A3+A4+A5+A6)));// Total volume in cubic m
disp(V,"Total volume by trapezoidal formula in cubic m");

// By prismoidal formula
V=(i/3)*(A1+A7+(4*(A2+A4+A6))+(2*(A3+A5)));// Total volume in cubic m
disp(V,"Total volume by prismoidal formula in cubic m");
// The answers vary due to round off error
