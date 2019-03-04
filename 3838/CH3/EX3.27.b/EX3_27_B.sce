//Example 3.27.B
clc;
Syms s t;
x=laplace(exp(-2*t),t,s);
y=laplace(1,t,s);
z=x*y;
f=ilt(z,s,t);
disp(f);
