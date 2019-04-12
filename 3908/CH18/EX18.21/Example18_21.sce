//Example 18_21
clc;
clear;
close;

//Given data :
ea=0.015;// in m
eb=0.02;// in m
a=90;// Side of triangle in m
b=120;// Side of triangle in m
eA=sqrt(((ea*b/2)^2)+((eb*a/2)^2));// eA in sq. m
// Area A = a*b/2
A=a*b/2;// Area in sq. m
disp(A,"Area in sq. m");
P1=A+eA;// Probable value P1 in sq. m
disp(P1,"Probable value P1 in sq. m");
P2=A-eA;// Probable value P2 in sq. m
disp(P2,"Probable value P2 in sq. m");
