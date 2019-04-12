//Example 14_4
clc;
clear;
close;

//Given data 
r1=1.905;// Reading 1 in m
r2=2.480;// Reading 2 in m
r3=3.055;// Reading 3 in m
s=r3-r1;// Intercept in m
// As the staff is held normal to the  line of sight
K=100;// Instrument constant
C=0.5;// Instrument constant
L=(K*s)+C;// Inclined length in m
d=6;// Degree
m=36;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// angle in degree
D=L*cosd(teta);// Horizontal distance in m
disp(D,"Horizontal distance in m");
V=L*sind(teta);// Difference in height from the instrument height at P in m
disp(V,"Difference in height from the instrument height at P in m");
RL1=852.55;// RL of BM in m
a=1.855;// Reading from P with the line of sight horizontal to a BM of RL 852.55 in m
RL=RL1+a;// RL of line of sight in m
RL2=RL+V-r2;// RL of Q in m
disp(RL2,"RL of Q in m");
// The answers vary due to round off error
