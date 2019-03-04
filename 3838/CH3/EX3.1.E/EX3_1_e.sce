//EXAMPLE 3.1.E
clc;
Syms s t;
e=laplace(exp(-4*t),t,s)-laplace(exp(4*t),t,s)
disp(e)
