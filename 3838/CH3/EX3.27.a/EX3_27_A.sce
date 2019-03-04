//Example 3.27.A
clc;
a=2;
Syms s t;
y=laplace(exp(-a*t),t,s);
z=1*y;
f=ilt(z,s,t);
disp(f);
