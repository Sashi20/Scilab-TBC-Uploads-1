//Example 17_1
clc;
clear;
close;

//Given data :
n=3;
s=3;
n1=3;
s1=3;
C=(n-s+1)+(n1-(2*s1)+3);
D=6-2;// There are six angles and sides; two unknown base lines are not to be counted
A=70;// Angle A in degree
B=45;// Angle B in degree
a=7;
R=(D-C)*a/D;// Strength of figure
disp(R,"Strength of figure"); 
