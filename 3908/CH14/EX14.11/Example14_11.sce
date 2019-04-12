//Example 14_11
clc;
clear;
close;

//Given data 
K=1000;// Stadia constant K
C=0.4;// Stadia constant C
n=21.35;// Number of revolutions of micrometer screw
s1=3;// Intercept in m
d=8;// Degree
m=15;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
D=((K*s1*(cosd(teta)^2))/n)+(C*cosd(teta));// Horizontal Distance in m
disp(D,"Horizontal Distance in m");
// The answers vary due to round off error
