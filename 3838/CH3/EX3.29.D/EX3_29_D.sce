//Example 3.29.d
clc;
Syms s t;
x=laplace(1-cos(t),t,s);
y=laplace(t,t,s);
z=x/y;
f=ilt(z,s,t);
disp(f);
