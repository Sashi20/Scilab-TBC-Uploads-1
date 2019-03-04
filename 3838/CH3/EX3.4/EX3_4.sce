//Example 3.4
clc;
Syms s,x;
A=2;
B=A*(sin(x)*exp(-s*x))
C=integrate(B,x,0,%pi);
disp(C)
