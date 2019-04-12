//Example 14_6
clc;
clear;
close;

//Given data 
K=100;// Instrument constant
C=0.3;// Instrument constant

// Observation from A to P
disp("(a) Observation from A to P");
a1=2.235;// Reading 1 at P in m
a2=2.795// Reading 2 at P in m
a3=3.355;// Reading 3 at P in m
s1=a3-a1;// Intercept in m
d=3;// Degree
m=45;// Minutes
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
RL1=235.455;// RL of BM in m
a=1.75;// Reading at BM in m
RL=RL1+a;// RL of line of sight in m
RL2=RL+V1-a2;// RL of P in m
disp(RL2,"RL of P in m");
x=RL2;

// Observation from B to P
disp("(b) Observation from B to P");
b1=0.945;// Reading 1 at P in m
b2=1.490// Reading 2 at P in m
b3=2.035;// Reading 3 at P in m
s2=b3-b1;// Intercept in m
d=2;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// angle in degree
L=((K+s2)*cosd(teta))+C;// Inclined length in m
D2=L*cosd(teta);// Horizontal distance in m
disp(D2,"Horizontal distance in m");
V2=(1/2)*((K+s2)*sind(2*teta))+(C*sind(teta));// Difference in height from the instrument height at P in m
disp(V2,"Difference in height in m");
RL1=235.455;// RL of BM in m
a=2.25;// Reading at BM in m
RL=RL1+a;// RL of line of sight in m
RL2=RL+V2-b2;// RL of P in m
disp(RL2,"RL of P in m");
y=RL2;
RL=(x+y)/2;// Average RL of P in m
disp(RL,"Average RL of P in m");
// The answers vary due to round off error
