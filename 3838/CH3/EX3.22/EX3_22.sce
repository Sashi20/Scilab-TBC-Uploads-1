//Example 3.22
clc;
Syms s t;
x=laplace(exp(-2*t)*cos(3*t),t,s);
y=laplace(4*sin(3*t),t,s);
z=x*y
i=ilt(z,s,t);
disp(i);
