//Example 7.2.C
clc;
Syms z;
X=nusum((0.8/z)^(i),i,-(%inf),-1);
disp(X,'X(z)=');
