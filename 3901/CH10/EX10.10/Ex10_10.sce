clc
clear

format(7)
A =[0 1; -2 -3];
[V,lambda ]= spec(A);
P=inv(V);
B =[1;2];
Bhat =P*B;
disp(P,"P=")
disp(Bhat ,"B^=")
disp(lambda," lambda=")
