//Example 18_22
clc;
clear;
close;

//Given data :
A=101.855;// Point A in m
B1=123.345;// Point B1 in m
B2=123.352;// Point B2 in m
B3=123.348;// Point B3 in m
D1=6;// Distance between A and B1 in km
D2=4;// Distance between A and B2 in km
D3=5;// Distance between A and B3 in km
V1=B1-A;// Difference in elevation Between B1 and A in m
V2=B2-A;// Difference in elevation Between B1 and A in m
V3=B3-A;// Difference in elevation Between B1 and A in m
// weight ratio = 1/D1 : 1/D2 : 1/D3 = 10:15:12
W=((V1*10)+(V2*15)+(V3*12))/37;// Weighted arithmetic mean in m
P=A+W;// Probable value of elevation of B
disp(P,"Probable value of elevation of B");
// The answers vary due to round off error
