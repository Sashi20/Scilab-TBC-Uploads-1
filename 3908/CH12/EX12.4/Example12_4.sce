//Example 12_4
clc;
clear;
close;

//Given data :
d=100;// Distance between points A and B in m
l=20;// legnth in m
P1=1.885;// Reading of P at midway between P and Q in m
Q1=2.435;// Reading of Q at midway between P and Q in m
P2=1.635;// Reading at P with level at R in m
Q2=2.085;// Reading at Q with level at R in m
te=Q1-P1;// True difference in elevation in m
ta=Q2-P2;// Apparent difference in elevation in m
P=P2;// Reading at A with level at A in m
// Add the true difference with P to get reading Q
Q=P+te;//Reading at B with level at A in m
disp(Q,"Correct reading at B in m");
if Q2<Q then
    disp("The line of collimation is inclined downwards.");
else
    disp("The line of collimation is inclined upwards.");
end
c=0.1;// Correction in 100 m in m
cp=c*l/d;// Correction to reading at P in m
cq=c*(l+d)/d;// Correction to reading at Q in m
Cp=P2+cp;// Correct reading at P
Cq=Q2+cq;// Correct reading at Q
D=Cq-Cp;// Difference in elevation in m
disp(D,"Difference in elevation in m");
alpha=atand(c/d);// Inclination of line of collimation in degree
disp(alpha,"Inclination of line of collimation in degree");
// The answers vary due to round off error
