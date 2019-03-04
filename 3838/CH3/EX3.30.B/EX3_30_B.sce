//Example 3.30.B
clc;
Syms s t;
x=laplace(exp(-5*t),t,s);
y=laplace(1,t,s);
z=x*y;
f=ilt(z,s,t);
disp(f);
