//Example 3.28.c
clc;
Syms s t;
x=laplace(t,t,s);
y=laplace(exp(-5*t),t,s);
z=x*y;
f=ilt(z,s,t);
disp(f);
