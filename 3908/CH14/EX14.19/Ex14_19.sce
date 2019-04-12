//Example 14_19
clc;
clear;
close;

//Given data
r1=1.235;// Reading 1 at P in m
r2=2.2// Reading 2 at P in m
r3=3.165;// Reading 3 at P in m
s1=r3-r1;// Intercept in m
D=100*s1;// Horizontal distance in m
d=3;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// angle in degree
I=s1*cosd(teta);// Intercept normal to the line of sight in m
CD=100*I;// Correct distance in m
e=D-CD;// Error in m
ep=e*100/D;// Error percentage 
disp(ep,"Error percentage");
// The answers vary due to round off error
