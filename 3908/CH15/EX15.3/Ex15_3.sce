//Example 15_3
clc;
clear;
close;

//Given data
a=30;// Length of arc in m
d=4*3.14/180;// Degree of curve in radian
R=a/d;// Radius of the curve in m
teta=36;// Deflection angle in degree
TD=R*tand(teta/2);// Tangent distance in m
disp(TD,"Tangent distance in m");
l=2*R*sind(teta/2);// Length of long chord in m
disp(l,"Length of long chord in m");
L=R*teta*3.14/180;// Length of arc in m
disp(L,"Length of arc in m");
AD=R*(secd(teta/2)-1);// Apex distance in m
disp(AD,"Apex distance in m")
MD=R*(1-cosd(teta/2));// Mid-ordinate in m
disp(MD,"Mid-ordinate in m");
// The answers vary due to round off error
