//Example 10_12
clc;
clear;
close;

//Given data :
b=10;// Formation width in m
s=2;// side slope
r=8;// Transverse slope
h1=2;// Central height at 0 chainage in m
h2=2.4;// Central height at 20 chainage in m
h3=3;// Central height at 60 chainage in m
a=r^2*s/((r^2)-(s^2));
b1=(h1+(b/(2*s)))^2;
b2=(h2+(b/(2*s)))^2;
b3=(h3+(b/(2*s)))^2;
c=b^2/(4*s);
A1=(a*b1)-c;// Area at chainage 0 in sq. m
A2=(a*b2)-c;// Area at chainage 0 in sq. m
A3=(a*b3)-c;// Area at chainage 0 in sq. m

// Volume by trapezoidal formula
i=20;// Interval in m
V=((i/2)*(A1+A2))+((i/2)*(A2+A3));// Volume by trapezoidal formula in cubic m
disp(V,"Volume by trapezoidal formula in cubic m");

// Volume by prismoidal formula
i=20;// Interval in m
V=(i/3)*(A1+A3+(4*A2));// Volume by prismoidal formula in cubic m
disp(V,"Volume by prismoidal formula in cubic m");
// The answers vary due to round off error
