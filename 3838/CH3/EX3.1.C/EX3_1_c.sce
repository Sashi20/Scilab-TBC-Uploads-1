//EXAMPLE 3.1.C
clc;
Syms s t
B=laplace(exp(-3*t),t,s)
disp(B)
