//Example 3.29.C
clc;
Syms s t;
x=laplace((1/25)*(exp(-5*t)+5*t-1),t,s);
y=laplace(exp(-5*t),t,s);
z=x/y;
f=ilt(z,s,t);
disp(f);
