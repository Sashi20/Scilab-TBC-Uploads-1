//Example 16_6
clc;
clear;
close;

//Given data :
d=980;// Distance in m
// R*sin(1")=30.91
a=30.91;
teta=d/a;// Central angle in seconds
R=6380;// Radius in m
Cc=((d/1000)^2)/(2*R);// Curvature correction in m
disp(Cc,"Curvature correction in m");
Cr=1/7*Cc;// Correction for refraction in m
CC=Cc-Cr;// Combined Correction in m
Ac=teta/2;// Angular correction in seconds
disp(Ac,"Angular correction in seconds");
Cr1=Cc*1000*d/a;// Correction for refraction in seconds
disp(Cr1,"Correction for refraction in seconds");
CC1=Ac-Cr1;// Combined correction in seconds
disp(CC1,"Combined correction in seconds");
// The answers vary due to round off error
