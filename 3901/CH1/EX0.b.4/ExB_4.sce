clc
clear

z1=2*exp(%i*%pi/4);
z2=8*exp(%i*%pi/3);

a=2*z1-z2;
b=1/z1;
c=z1/(z2)^2;
d=(z2)^(1/3);

disp("a= ");disp(a)
disp("b= ");disp(b)
disp("c= ");disp(c)
disp("d= ");disp(d)
