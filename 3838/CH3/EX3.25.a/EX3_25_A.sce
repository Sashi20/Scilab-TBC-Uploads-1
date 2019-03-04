//EXAMPLE 3.25.A
clc;
Syms s,t;
u=laplace(1,t,s)+laplace(exp(-2*t),t,s);
F=u*laplace(1,t,s)
disp(F);
