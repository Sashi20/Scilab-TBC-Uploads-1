//Example 14_18
clc;
clear;
close;

//Given data
r1=1;
r2=5;
s1=r2-r1;// Intercept in m 
d=2;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta1=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
d=3;// Degree
m=45;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta2=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
D=s1/(tand(teta1)+tand(teta2));// Horizontal distance PQ in m
disp(D,"Horizontal distance PQ in m");
V=D*tand(teta1);// Difference in height in m
RL1=258.5;// RL of BM in m
a=1.875;// Reading at BM in m
RL=RL1+a;// RL of line of sight in m
RL2=RL-V-r1;// RL of P in m
disp(RL2,"RL of P in m");
