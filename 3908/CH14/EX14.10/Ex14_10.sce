//Example 14_10
clc;
clear;
close;

//Given data 
a1=1.325;// Observed reading 1 at A for instrument at P in m
a2=2.122;// Observed reading 2 at A for instrument at P in m
b1=0.985;// Observed reading 1 at B for instrument at P in m
b2=2.382;// Observed reading 2 at B for instrument at P in m
D1=80;// Distance at A for instrument at P in m
D2=140;// Distance at B for instrument at P in m
d=2;// Degree
m=30;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta1=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
d=1;// Degree
m=36;// Minutes
// 1 degree = 60 minutes.
// Therefore 1 minute = 1/60 degree
s=0;// Seconds
// 1 minute = 60 seconds
// 1 degree = 3600 seconds.
// Therefore 1 second = 1/3600 degree
teta2=d+(m*1/60)+(s*1/3600);// Vertical angle in degree
// D=((K*s*cos(teta))+C)*cos(teta)    - eq 1
// For observation from P to A
s1=(a2-a1)*(cosd(teta1)^2);// Difference between staff reading q3 and q1 in m
// For observation from P to B
s2=(b2-b1)*(cosd(teta2)^2);// Difference between staff reading p3 and p1 in m
// substituting values in eq 1
// D1=((K*s1*cos(teta1))+C)*cos(teta1)
// D2=((K*s2*cos(teta2))+C)*cos(teta2)
// Solving the equations by eliminating C, then equating K
K=(D2-D1)/(s2-s1);// Stadia contsant K
disp(K,"Stadia contsant K")
x=cosd(teta2);
C=x*(D2-(K*s2));// Stadia constant C
disp(C,"Stadia contsant C")
// The answers vary due to round off error
