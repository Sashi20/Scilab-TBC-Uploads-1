//Example 7.2.D
clc;
Syms z;
X=nusum((0.5/z)^(i),i,0,%inf);
D=nusum((0.8/z)^(i),i,-(%inf),-1);
disp(D+X,'X(z)=');
