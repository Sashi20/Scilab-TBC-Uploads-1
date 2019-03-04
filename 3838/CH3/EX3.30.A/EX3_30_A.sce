//Example 3.30.A
clc;
Syms s t;
x=laplace(3*t,t,s);
y=laplace(1,t,s);
z=x*y;
f=ilt(z,s,t);
disp(f);
