//Example 3.14
clc;
Syms s,t;
I=1/((s+2)*(((s)^(2))+s+1));
i=ilt(I,s,t);
disp(i);
