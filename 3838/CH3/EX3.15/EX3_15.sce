//Example 3.15
clc;
Syms s,t;
I=4/((s^(2))*(s^(2)+16));
i=ilt(I,s,t);
disp(i);
