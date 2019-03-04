//Example 7.2.B
clc;
Syms z;
X=nusum((0.5/z)^(i),i,0,%inf);
disp(X,'X(z)=');
