//Example 1_7
clc;
clear;
close;

//Given data :
l=0.002;// length in m
//Case 1
S=10;// sensitivity of bubble in s
R=l*206265/S;// radius of curvature in m
disp(R,"radius of curvature in m");
//Case 2
S=60;// sensitivity of bubble in s
R=l*206265/S;// radius of curvature in m
disp(R,"radius of curvature in m");
// The answers vary due to round off error
