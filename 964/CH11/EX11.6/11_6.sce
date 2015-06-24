//clc()
A = [1,0.5,1/3;1/2,1/3,1/4;1/3,1/4,1/5];
B = [1.833333;1.083333;0.783333];
U = inv(A);
X = U*B;
x = det(X(1,1));
y = det(X(2,1));
z = det(X(3,1));
disp(x,"x = ")
disp(y,"y = ")
disp(z,"z = ")
