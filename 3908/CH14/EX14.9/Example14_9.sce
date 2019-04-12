//Example 14_9
clc;
clear;
close;

//Given data 
p1=1.135;// Observed reading 1 at P for instrument at O in m
p2=1.284;// Observed reading 2 at P for instrument at O in m
p3=1.433;// Observed reading 3 at P for instrument at O in m
q1=1.025;// Observed reading 1 at Q for instrument at O in m
q2=1.325;// Observed reading 2 at Q for instrument at O in m
q3=1.624;// Observed reading 3 at Q for instrument at O in m
D1=30;// Distance at P for instrument at O in m
D2=60;// Distance at Q for instrument at O in m
// D=(K*s)+C    - eq 1
// For observation from O to P
s1=p3-p1;// Difference between staff reading q3 and q1 in m
// For observation from O to Q
s2=q3-q1;// Difference between staff reading p3 and p1 in m
// substituting values in eq 1
// D1=(K*s1)+C
// D2=(k*s2)+C
// Solving the equations by eliminating C, then equating K
K=(D2-D1)/(s2-s1);// Stadia contsant K
disp(K,"Stadia contsant K");
C=D2-(K*s2);// Stadia constant C
disp(C,"Stadia contsant C");
// The answers vary due to round off error
