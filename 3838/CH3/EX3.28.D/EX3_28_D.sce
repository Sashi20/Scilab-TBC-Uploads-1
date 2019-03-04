//Example 3.28.D
clc;
Syms s t;
x=laplace(cos(t),t,s);
y=laplace(t,t,s);
z=x*y;
f=ilt(z,s,t);
disp(f);
