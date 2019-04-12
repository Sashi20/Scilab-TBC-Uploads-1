//Example 14_1
clc;
clear;
close;

//Given data :
r1=1.980;// Reading 1 in m
r2=1.660;// Reading 2 in m
r3=1.340;// Reading 3 in m
s=r1-r3;
K=100;// Instrument constant
C=0.5;// Instrument constant
D=(K*s)+C;// Horizontal distance PQ in m
disp(D,"Horizontal distance PQ in m");
R1=1020.5;// Reading 1 from P to a staff held at BM elevation in m
R2=2.85;// Reading 2 from P to a staff held at BM elevation in m
E=R1+R2;// Elevation of line of sight in m
Eq=E-r2;// Elevation of point Q in m
disp(Eq,"Elevation of point Q in m");
