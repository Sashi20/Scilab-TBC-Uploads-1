//Example 3.26.A
clc;
Syms s t;
F=1/(s^(2)*(s-2));
f=ilt(F,s,t);
disp(f);
