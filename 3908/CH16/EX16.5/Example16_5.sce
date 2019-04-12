//Example 16_5
clc;
clear;
close;

//Given data :
D=180;// Distance between the stations in m
a1=58+(30/60);// Angle PI1I2 in degree
a2=50+(50/60);// Angle PI2I1 in degree
a=180-a1-a2;// Angle in I1PI2 in m
// By sine rule,
//      180/sin(a) = I1P/sin(a1) = I2P/sin(a2)
I1P=180*sind(a2)/sind(a);// Distance from I1 to point P in m
disp(I1P,"Distance from I1 to point P in m");
I2P=180*sind(a1)/sind(a);// Distance from I2 to point P in m
disp(I2P,"Distance from I2 to point P in m");
alpha1=10+(50/60);// Vertical angle from I1 in degree
alpha2=9+(27/60);// Vertical angle from I2 in degree
r1=1.65;// Reading at benchmark from station I1 in m
r2=2.85;// Reading at benchmark from station I2 in m
H=I1P*tand(alpha1);// Height in m
RLb=1085.65;// RL of benchmark in m
RLp=RLb+r1+H;// RL of P in m
disp(RLp,"RL of P in m");
