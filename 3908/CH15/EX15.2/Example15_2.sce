//Example 15_2
clc;
clear;
close;

//Given data
a=20;// Length of arc in m
R=380;// Radius of the curve in m
d=a/R;// Degree of curve in radian
d=d*180/3.14;// Degree of curve in degree
D=d;// Degree destination of the curve in degree
disp(D,"Degree destination of the curve in degree");
// The answers vary due to round off error
