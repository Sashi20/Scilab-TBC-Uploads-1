//Example 7.2.A
clc;
Syms z;
x=1;
X=nusum(x/(z^i),i,0,%inf);
disp(X,'X(z)=');
