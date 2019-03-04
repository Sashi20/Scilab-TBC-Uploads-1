//EXAMPLE 3.2.B
clc;
Syms s t
w=2;
B=laplace(cos(w*t),t,s)
disp(B)
