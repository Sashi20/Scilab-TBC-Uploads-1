//EXAMPLE 3.2.D
clc;
Syms s t
w=2;
a=5;
F=exp(-a*t)*sin(w*t)
B=laplace(F,t,s)
disp(B)
