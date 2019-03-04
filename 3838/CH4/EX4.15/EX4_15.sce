//Example 4.15
clc;
Syms o,x,T;
A=(1+x/2)/(exp(%i*o*x));
B=(1-x/2)/(exp(%i*o*x));
Y=integrate(A,x,-2,2)
L=integrate(B,x,-2,2)
Z=Y+L;
disp(Z)
