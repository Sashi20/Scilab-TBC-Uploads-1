//Example 4.14
clc;
Syms o,x,T;
A=1/(exp(%i*o*x));
Y=integrate(A,x,-1,1)
disp(Y)
