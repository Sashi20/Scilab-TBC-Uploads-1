//Example 14_20
clc;
clear;
close;

//Given data
l=4;// Length of staff in m
x=0.12;// length out of plumb in m
alpha=atand(x/l);// angle in degree
r1=2.385;// Reading 1 in m
r2=1.063;// Reading 2 in m
s1=r1-r2;// Staff intercept in m
d=8;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta=d+(m*1/60)+(s*1/3600);// angle in degree
Cs=s1*cosd(teta+alpha)/cosd(teta);// Correct value of intercept in m
CD=100*Cs*(cosd(teta)^2);// Correct horizontal distance in m
E=100*(cosd(teta)^2)*(s1-Cs);// Error in disatnce in m
disp(E,"Error in disatnce in m");
// The answers vary due to round off error
