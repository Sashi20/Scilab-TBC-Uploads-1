//Example 4.13.B
clc;
Syms o,x,a,o1;
A=(exp(-a*x)*cos(o1*x))/(exp(%i*o*x))
Y=integrate(A,x,-1,1)
disp(Y)
