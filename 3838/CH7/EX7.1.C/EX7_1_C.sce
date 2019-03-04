//Example 7.1.c
clc;
Y=[2,4,5,7,3];
X=0;
Syms z;
for i=1:5
    X=X+Y(i)/z^(i-3)
end
disp(X,"X(z)=")
