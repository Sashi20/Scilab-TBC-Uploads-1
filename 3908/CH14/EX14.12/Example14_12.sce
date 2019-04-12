//Example 14_12
clc;
clear;
close;

//Given data 
K=1000;// Stadia constant K
C=0.5;// Stadia constant C
s1=5;// Intercept in m
d=6;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
D=258;// Horizontal distance between A and B in m
n=(K*s1*(cosd(teta)^2))/(D-(C*cosd(teta)));// Number of revolutions of micrometer screw
disp(n,"Number of revolutions of micrometer screw")
// The answers vary due to round off error
