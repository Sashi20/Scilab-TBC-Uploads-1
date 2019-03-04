//Example 3.29.b
clc;
Syms s t;
x=laplace(exp(-2*t),t,s);
y=laplace(exp(-5*t),t,s);
z=(1/3)*(x-y);
A=laplace(exp(-5*t),t,s);
B=z/A
f=ilt(B,s,t);
disp(f);
