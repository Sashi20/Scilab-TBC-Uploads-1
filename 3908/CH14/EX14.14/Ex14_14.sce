//Example 14_14
clc;
clear;
close;

//Given data 
s=1.5;// Intercept in m
D1=60;// Distance from O in m
D2=120;// Distance from O in m
n1=22.5;// Number of revolutions of micrometer screw for 60 m
n2=11.28;// Number of revolutions of micrometer screw for 120 m
// D=(K*s/n)+C    - eq 1
// Substituting the values in eq 1
// D1=(K*s1/n1)+C
// D2=(k*s2/n2)+C
// Solving the equations by eliminating C, then equating K
K=(D2-D1)/((s/n2)-(s/n1));// Stadia contsant K
disp(K,"Stadia contsant K");
C=-(D2-(K*s/n2));// Stadia constant C
disp(C,"Stadia contsant C");
// The answers vary due to round off error
