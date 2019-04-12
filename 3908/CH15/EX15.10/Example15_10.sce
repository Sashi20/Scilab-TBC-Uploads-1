//Example 15_10
clc;
clear;
close;

//Given data
R=300;// Radius of the curve in m
x=100;// Distance along tangent in m
Yr=sqrt((R^2)+(x^2))-R;// Radial offset Yr in m
disp(Yr,"Radial offset Yr in m");
alpha=acosd(R/(R+Yr))/2;// in degree
ca=2*alpha;// Central angle for chord in degree
T1P=R*ca*3.14/180;// Chord length T1P in m
disp(T1P,"Chord length T1P in m")
T1R=T1P/(2*cosd(alpha));// Chord length T1R in m
disp(T1R,"Chord length T1R in m")
// The answers vary due to round off error
