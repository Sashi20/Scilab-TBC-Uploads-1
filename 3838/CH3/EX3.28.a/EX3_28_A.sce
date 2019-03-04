//Example 3.28.A
clc;
Syms s t;
x=laplace(2,t,s);
y=laplace(1,t,s);
z=x*y;
f=ilt(z,s,t);
disp(f);
