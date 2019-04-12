//Example 14_2
clc;
clear;
close;

//Given data 
q1=1.354;// Observed reading 1 at Q for instrument at P in m
q2=1.603;// Observed reading 2 at Q for instrument at P in m
q3=1.852;// Observed reading 3 at Q for instrument at P in m
r1=1.152;// Observed reading 1 at R for instrument at P in m
r2=1.65;// Observed reading 2 at R for instrument at P in m
r3=2.149;// Observed reading 3 at R for instrument at P in m
D1=50;// Distance at Q for instrument at P in m
D2=100;// Distance at R for instrument at P in m
// D=(K*s)+C    - eq 1
// For observation from P to Q
s1=q3-q1;// Difference between staff reading q3 and q1 in m
// For observation from P to R
s2=r3-r1;// Difference between staff reading p3 and p1 in m
// substituting values in eq 1
// D1=(K*s1)+C
// D2=(k*s2)+C
// Solving the equations by eliminating C, then equating K
K=(D2-D1)/(s2-s1);// Stadia contsant K
disp(K,"Stadia contsant K")
C=D2-(K*s2);// Stadia constant C
disp(C,"Stadia contsant C")
// The answers vary due to round off error
