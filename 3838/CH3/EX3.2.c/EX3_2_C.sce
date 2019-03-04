//EXAMPLE 3.2.C
clc;
Syms s t
w=2;
B=laplace(cosh(w*t),t,s)
disp(B)
