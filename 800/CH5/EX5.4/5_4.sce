//Clear//
clc
clear
exec('5_4.sci');

rCH4 = (v0/W)*CCH4;
x=log(PCO);
y = log(rCH4)
alpha= (y(3)-y(2))/(x(3)-x(2));
disp("alpha")
disp(alpha)