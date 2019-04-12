//Example 14_7
clc;
clear;
close;

//Given data 
K=100;// Instrument constant
C=0.3;// Instrument constant

// (a) Observation to P
disp("(a) Observation from A to P");
p1=1.35;// Reading 1 at P in m
p2=2.10;// Reading 2 at P in m
p3=2.85;// Reading 3 at P in m
s1=p3-p1;// Intercept in m
d=84;// Degree
m=36;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta1=d+(m*1/60)+(s*1/3600);// Bearing angle in degree
d=3;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta2=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
L=(K*s1)+C;// Inclined length in m
D1=L*cosd(teta2);// Horizontal distance in m
disp(D1,"Horizontal distance in m");
V1=L*sind(teta2);// Difference in height from the instrument height at P in m
disp(V1,"Difference in height in m");

// (b) Observation to Q
disp("(b) Observation from A to Q");
q1=1.955;// Reading 1 at Q in m
q2=2.875;// Reading 2 at Q in m
q3=3.765;// Reading 3 at Q in m
s2=q3-q1;// Intercept in m
d=142;// Degree
m=24;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta3=d+(m*1/60)+(s*1/3600);// Bearing angle in degree
d=2;// Degree
m=45;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta4=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
L=(K*s2)+C;// Inclined length in m
D2=L*cosd(teta4);// Horizontal distance in m
disp(D2,"Horizontal distance in m");
V2=L*sind(teta4);// Difference in height from the instrument height at P in m
disp(V2,"Difference in height in m");
teta5=teta3-teta1;// Angle PAQ in degree
// Using cosine rule
AP=D1;
AQ=D2;
PQ=sqrt((AP^2)+(AQ^2)-(2*AP*AQ*cosd(teta5)));// Length of PQ in m
// Assuming the horizontal line of sight at A as datum
EP=V1-p2;// Elevation of P in m
EQ=V2-q2;// Elevation of Q in m
DE=EP-EQ;// Difference in elevation in m
disp(DE,"Difference in elevation in m");
Gr=DE/PQ;// Gradient from P to Q
disp(Gr,"Gradient from P to Q");
// The answers vary due to round off error
// The answer provided in the textbook is wrong
