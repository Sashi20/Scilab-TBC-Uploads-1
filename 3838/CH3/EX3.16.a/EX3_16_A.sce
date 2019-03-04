//Example 3.16.A
clc;
Syms s,t;
I=(3*s^(2)+8*s+23)/((s+3)*(s^(2)+2*s+10));
i=ilt(I,s,t);
disp(i);
