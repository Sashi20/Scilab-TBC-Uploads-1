//Example 3.26.B
clc;
Syms s t;
F=1/(s*(s+1)*(s-2));
f=ilt(F,s,t);
disp(f);
