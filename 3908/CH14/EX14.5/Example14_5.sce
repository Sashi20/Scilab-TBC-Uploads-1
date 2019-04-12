//Example 14_5
clc;
clear;
close;

//Given data 
K=100;// Instrument constant
C=0.3;// Instrument constant

// Observation to Q
disp("(a) Observation to Q");
q1=2.105;// Reading 1 at Q in m
q2=2.470;// Reading 2 at Q in m
q3=2.835;// Reading 3 at Q in m
s1=q3-q1;// Intercept in m
d=5;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// angle in degree
L=(K*s1*cosd(teta))+C;// Inclined length in m
D1=L*cosd(teta);// Horizontal distance in m
disp(D1,"Horizontal distance in m");
V1=L*sind(teta);// Difference in height from the instrument height at P in m
disp(V1,"Difference in height in m");

// Observation to R
disp("(b) Observation to R");
r1=2.215;// Reading 1 at R in m
r2=2.560;// Reading 2 at R in m
r3=2.905;// Reading 3 at R in m
s2=r3-r1;// Intercept in m
d=1;// Degree
m=08;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// angle in degree
L=(K*s2*cosd(teta))+C;// Inclined length in m
D2=L*cosd(teta);// Horizontal distance in m
disp(D2,"Horizontal distance in m");
V2=L*sind(teta);// Difference in height from the instrument height at P in m
disp(V2,"Difference in height in m");

PQ=D1;// Length in m
PR=D2;// Length in m
d=58;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// angle QPR in degree
QR=sqrt((PQ^2)+(PR^2)-(2*PQ*PR*cosd(teta)));// Length in m
RL1=285.35;// RL of BM in m
a=2.255;// Reading from P with the line of sight horizontal to a BM of RL 285.35 in m
RL=RL1+a;// RL of line of sight in m
RL2=RL+V1-q2;// RL of Q in m
disp(RL2,"RL of Q in m");
RL3=RL+V2-r2;// RL of R in m
disp(RL3,"RL of R in m");
d=RL2-RL3;// Difference in elevation of Q and R in m
disp(d,"Difference in elevation of Q and R in m");
G=d/QR;// Gradient from Q t R
disp(G,"Gradient from Q t R");
// The answers vary due to round off error
