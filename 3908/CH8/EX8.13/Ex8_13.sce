//Example 8_13
clc;
clear;
close;

//Given data :
b=170;// Length of DC in m
a=250;// Length of AB in m
// h = h1 + h2 = 150
h=150;// Height in m
A=(1/2)*(b+a)*h;// Area of trapezium in sq. m
disp(A,"Area of trapezium in sq. m");
// Ratio is 7:3
r1=7;
r2=3;
sr=r1+r2;// Sum of ratios
A1=A*r1/sr;// Area of ABQP in sq. m
disp(A1,"Area of ABQP in sq. m");
A2=A*r2/sr;// Area of PQCD in sq. m
disp(A2,"Area of PQCD in sq. m");
x=sqrt((((r1*b^2)+(r2*a^2)))/(r1+r2));// Length of PQ in m
disp(x,"Length of PQ in m");
h1=h*(a-x)/(a-b);// Height h1 in m
disp(h1,"Height h1 in m");
h2=h-h1;// Height h2 in m
disp(h2,"Height h2 in m");
