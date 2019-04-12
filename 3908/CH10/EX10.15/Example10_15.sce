//Example 10_15
clc;
clear;
close;

//Given data :
h=2;// Height along centre line in m
b=10;// Formation width in m
s=1.5;// Side slope
r=8;// Transverse slope
h1=((8*h)-(b/2))/9.5;// Height in m
h2=((b/2)+(8*h))/6.5;// Heght in m
w1=(h-h1)*8;// Width in m
w2=(h2-h)*8;// Width in m
A=((s*((b/2)^2))+((r^2)*b*h)+((r^2)*s*(h^2)))/((r^2)-(s^2));// Area od section in sq. m
E=w1*w2*(w1+w2)/(3*A*r);// Eccentricity of centroid in m
R=180;// Radius of the curve in m
a=30;
pi=22/7;
l=R*a*pi/R;// Length in m
CC=A*E*l/R;// Curvature Correction in cubic m
disp(CC,"Curvature Correction in cubic m");
// The answers vary due to round off error
