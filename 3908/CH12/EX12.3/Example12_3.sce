//Example 12_3
clc;
clear;
close;

//Given data :
d=80;// Distance between P and Q in m
P1=1.860;// Reading at P when instrument at P in m
Q1=2.660;// Reading at Q when instrument at P in m
P2=1.215;// Reading at P when instrument at Q in m
Q2=1.815;// Reading at Q when instrument at Q in m
de1=Q1-P1;// Difference in elevation when instrument at P in m
de2=Q2-P2;// Difference in elevation when instrument at Q in m
te=(de1+de2)/2;// True difference in elevation in m
P=P1;// Reading at P with instrument at P in m
// Add the true difference with P to get reading Q
Q=P+te;//Reading at Q with instrument at P in m
disp(Q,"Correct reading at Q in m");
if Q2<Q then
    disp("The line of collimation is inclined downwards.");
else
    disp("The line of collimation is inclined upwards.");
end
Q=Q2;// Reading at Q with instrument at Q in m
// Add the true difference with Q to get reading P
P=Q+te;//Reading at P with instrument at Q in m
D=Q1-P;// Difference in reading in m
alpha=atand(D/d);// Inclination of line of collimation in degree
disp(alpha,"Inclination of line of collimation in degree");
// The answers vary due to round off error
