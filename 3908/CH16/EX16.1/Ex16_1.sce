//Example 16_1
clc;
clear;
close;

//Given data :
RLb=380.355;// Rl of benchmark in m
sr=2.785;// Staff reading in m
RLl=RLb+sr;// RL of line of sight in m
D=185;// Distance between the instrument and point P in m
alpha=8+(28/60)+(40/3600);// Vertical angle in degree
h=D*tand(alpha);// Height of staff mark above line of sight in m
RLp=RLl+h-3;// RL of staton P in m
disp(RLp,"RL of staton P in m");
// The answers vary due to round off error
