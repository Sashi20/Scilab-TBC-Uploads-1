//Example 2.53 (d)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z transform of delta(n)
clc;
syms n z kc;
x=1;
X=symsum(x*z^(-n),n,-k,-k);
disp(X,'X(z)=');