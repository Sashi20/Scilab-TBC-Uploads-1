//Example 4.13.A
clc;
Syms o,x;
A=(1-x^2)/(exp(%i*o*x))
Y=integrate(A,x,-1,1)
disp(Y)
