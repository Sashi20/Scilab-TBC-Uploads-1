//EXAMPLE 3.2.A
clc;
Syms s t
w=2;
B=laplace(sin(w*t),t,s)
disp(B)
