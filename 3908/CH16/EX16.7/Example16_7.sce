//Example 16_7
clc;
clear;
close;

//Given data :
d=2860;// Distance between station P and station Q in m
// R*sin(1")=30.91
a=30.91;
teta=d/a;// Central angle in seconds
R=6380;// Radius in m
Cc=teta/2;// Curvature correction in seconds
disp(Cc,"Curvature correction in seconds");
Cr=0.07*teta;// Correction for refraction in seconds
disp(Cr,"Correction for refraction in seconds");
CC=Cc-Cr;// Combined correction in seconds
disp(CC,"Combined correction in seconds");
alpha=68-CC;// Corrected angle at P in seconds
// From Cr = teta/2 - (alpha+beta)/2 => (alpha+beta)/2 = teta/2 - Cr
// alpha+beta = 2*(teta/2 - Cr)
beta=(2*((teta/2)-Cr))-alpha;// Angle measured form Q in seconds
disp(beta,"Angle measured form Q in seconds");
// The answers vary due to round off error
