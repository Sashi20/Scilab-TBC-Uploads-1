//Example 16_2
clc;
clear;
close;

//Given data :
RLb=1583.55;// Rl of benchmark in m
sr=1.875;// Staff reading in m
RLl=RLb+sr;// RL of line of sight in m
D1=300;// Distance between the instrument and point P in m
D2=2850;// Distance between the instrument and point Q in m
// For point P
alpha1=4+(30/60)+(0/3600);// Vertical angle at P in degree
h1=D1*tand(alpha1);// Height of staff mark above line of sight at P in m
RLp=RLl+h1-4;// RL of staton P in m
disp(RLp,"RL of staton P in m");
// For point Q
alpha2=7+(34/60)+(30/3600);// Vertical angle at Q in degree
h2=D2*tand(alpha2);// Height of staff mark above line of sight at Q in m
C=0.06375*((D2/1000)^2);// Correction for curvature and refraction in m
RLq=RLl+h1+C-4;// RL of staton Q in m
disp(RLq,"RL of staton Q in m");
