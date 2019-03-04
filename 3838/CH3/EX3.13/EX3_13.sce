//Example 3.13
clc;
Syms s,t;
I=2/((s)*(s+1)*(s+2)^(2));
i=ilt(I,s,t);
disp(i);
