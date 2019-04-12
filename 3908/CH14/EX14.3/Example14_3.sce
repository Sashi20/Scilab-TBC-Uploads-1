//Example 14_3
clc;
clear;
close;

//Given data 
f=0.25;// Focal length of objective lens in m
d=0.15;// Distance from the objective lens to the vertical axis in m
C=f+d;// Constant C
r1=1.460;// Reading 1 in m
r2=2.055;// reading 2 in m
s=r2-r1;// Staff intercept in m
D=60;// Distance in m
K=(D-C)/s;// Constant K
// K=f/i, where i is stadia interval in m
i=f/K;// Stadia interval in m
disp(i,"Stadia interval in m");
