//Example 8_5
clc;
clear;
close;

//Given data :
n=10;// Number of sections
l=100;// Total length in m
l1=3.8;// Length of offset measures at 0 m in m
l2=5.1;// Length of offset measures at 10 m in m
l3=6.5;// Length of offset measures at 20 m in m
l4=6.8;// Length of offset measures at 30 m in m
l5=5.9;// Length of offset measures at 40 m in m
l6=5.9;// Length of offset measures at 50 m in m
l7=6.2;// Length of offset measures at 60 m in m
l8=7.0;// Length of offset measures at 70 m in m
l9=6.6;// Length of offset measures at 80 m in m
l10=5.8;// Length of offset measures at 90 m in m
l11=4.2;// Length of offset measures at 100 m in m

// (a) Average ordinate rule
N=n+1;// Number of ordinates
S=l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11;// Sum of offsets in m
A=S/N*l;// Area in sq. m
disp(A,"(a) Area in sq. m");

// (b) Trapezoidal rule
i=10;// Offset interval in m
A=i*(((l1+l11)/2)+l2+l3+l4+l5+l6+l7+l8+l9+l10);// Area in sq. m
disp(A,"(b) Area in sq. m");

// (c) Parabolic rule
i=10;// Offset interval in m
A=(1/3*i)*(l1+l11+(4*(l2+l4+l6+l8+l10))+(2*(l3+l5+l7+l9)));// Area in sq. m
disp(A,"(c) Area in sq. m");
