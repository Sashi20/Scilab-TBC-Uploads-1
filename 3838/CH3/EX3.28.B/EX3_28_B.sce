//Example 3.28.B
clc;
Syms s t;
x=laplace(exp(-2*t),t,s);
y=laplace(exp(-5*t),t,s);
z=x*y;
f=ilt(z,s,t);
disp(f);
