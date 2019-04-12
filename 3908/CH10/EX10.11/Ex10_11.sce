//Example 10_11
clc;
clear;
close;

//Given data :
gl=125.96;// Ground level in m
rl=121.22;// Reduced level in m
d=gl-rl;// Depth of the tank in m
l=72;
b=48;
sl=2;// Side slope for length
sb=1.5;// Side slope for width

// By trapezoidal formula
L=l+4.4+(4.4*sl);// Length of the tank in m
B=b+4.4+(4.4*sb);// Width of the tank in m
A1=l*b;// Area A1 in sq. m
A2=L*B;// Area A2 in sq.m
V=(A1+A2)*4.4/2;// Volume by trapezoidal formula in cubic m
disp(V,"Volume by trapezoidal formula in cubic m");

// By prismoidal formula
L=l+2.2+(2.2*sl);// Length of the tank in m
B=b+2.2+(2.2*sb);// Width of the tank in m
A=L*B;// Area at mid-depth in sq. m
V=(2.2/3)*(A1+A2+(4*A));// Volume by prismoidal formula in cubic m
disp(V,"Volume by prismoidal formula in cubic m");
