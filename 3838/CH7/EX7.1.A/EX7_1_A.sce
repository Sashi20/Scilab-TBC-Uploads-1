//Example 7.1.A
clc;
Y=[3,2,5,7];
X=0;
Syms z;
for i=1:4
    X=X+Y(i)/z^(i-1)
end
disp(X,"X(z)=")
