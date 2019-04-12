//Example 8_6
clc;
clear;
close;

//Given data :
n=8;// Number of sections
l=12;// Length of each section in m
l1=0;// Length of offset in m
l2=5.2;// Length of offset in m
l3=7.4;// Length of offset in m
l4=8.6;// Length of offset in m
l5=7.9;// Length of offset in m
l6=8.5;// Length of offset in m
l7=8.2;// Length of offset in m
l8=9.1;// Length of offset in m
l9=7.6;// Length of offset in m

// (a) Average ordinate rule
N=n+1;// Number of ordinates
S=l1+l2+l3+l4+l5+l6+l7+l8+l9;// Sum of ordinates in m
A=(S/N)*l*n;// Area in sq. m
disp(A,"(a) Area in sq. m");

// (b) Trapezoidal rule and Simpson's rule
A=l*(((l1+l9)/2)+l2+l3+l4+l5+l6+l7+l8);// Area in sq. m
disp(A,"(b) Trapezoidal rule - Area in sq. m");
A=(1/3*l)*(l1+l9+(4*(l2+l4+l6+l8))+(2*(l3+l5+l7)));// Area in sq. m
disp(A,"    Simpson rule - Area in sq. m");

