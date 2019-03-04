//Example 7.1.B
clc;
Y=[6,4,5,3];
X=0;
Syms z;
for i=1:4
    X=X+Y(i)/z^(i-4)
end
disp(X,"X(z)=")
