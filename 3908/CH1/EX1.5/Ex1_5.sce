//Example 1_5
clc;
clear;
close;

//Given data :
n=5;// number of divisions(no unit)
l=0.002;// length in m
D=80;// distance in m
s1=1.675;// reading of bubble at centre in m
s2=1.705;// reading of bubble shifted five divisions off-centre in m
s=s2-s1;// difference in reading in m
R=n*l*D/s;// radius of curvature in m
disp(R,"Radius of curvature in m");
S= 206265*s/(n*D);// sensitivity of bubble in s
disp(S,"Sensitivity of bubble in s");
// The answers vary due to round off error
