//Example 15_4
clc;
clear;
close;

//Given data
teta=42;// Deflection angle in degree
TD=235.6;// Tangent distance in m
R=TD/tand(teta/2);// Radius of the curve in m
disp(R,"Radius of the curve in m");
l=2*R*sind(teta/2);// Length of long chord in m
disp(l,"Length of long chord in m");
// The answer provided in the textbook is wrong
L=R*teta*3.14/180;// Length of arc in m
disp(L,"Length of arc in m");
AD=R*(secd(teta/2)-1);// Apex distance in m
disp(AD,"Apex distance in m")
MD=R*(1-cosd(teta/2));// Mid-ordinate in m
disp(MD,"Mid-ordinate in m");
// The answers vary due to round off error
