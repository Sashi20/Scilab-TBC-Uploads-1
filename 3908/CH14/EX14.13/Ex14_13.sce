//Example 14_13
clc;
clear;
close;

//Given data 
K=100;// Stadia constant K
C=0.5;// Stadia constant C
p1=1.335;// Reading 1 at P in m
p2=2.335;// Reading 2 at P in m
p3=3.335;// Reading 3 at P in m
s1=p3-p1;// Intercept in m
d=5;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
D=(K*s1*(cosd(teta)^2))+(C*cosd(teta));// Horizontal Distance in m
disp(D,"Horizontal Distance in m");
V=(1/2)*(K*s1*sind(2*teta))+(C*sind(teta));// Difference in height in m
disp(V,"Difference in height in m");
PQ=D;
RL1=1030.5;// RL of BM in m
a=2.355;// Reading at BM in m
RL=RL1+a;// RL of line of sight in m
RL2=RL+V-p2;// RL of Q in m
disp(RL2,"RL of P in m");
s2=3;// Intercept in m
n=14.93;// Number of revolutions of micrometer screw
// D=((K*s1*(cosd(teta)^2))/n)+(C*cosd(teta))
K=(D-(C*cosd(teta)))/(s2*(cosd(teta)^2)/n);// Stadia constant K
disp(K,"Stadia constant K");
// The answer provided in the textbook is wrong
