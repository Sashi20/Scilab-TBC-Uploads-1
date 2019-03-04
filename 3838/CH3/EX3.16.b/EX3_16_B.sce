//Example 3.16.B
clc;
Syms s,t;
I=(8*(s^(2)))/((s+2)*(s+1)^(3));
i=ilt(I,s,t);
disp(i);
