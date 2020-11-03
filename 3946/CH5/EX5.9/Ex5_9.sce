//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//From geometry:
//tan(X) = (r * (2*cos(X) - 1.5))/2*r*sin(X)
//Solving:
//4*cos(X)^2 - 1.5*cos(X) - 2 = 0
//Let cos(X) = x
a = 4;    //(coefficient of cos(X)^2)
b = -1.5; //(coefficient of cos(x))
c = -2;   //(constant term)
x = poly(0,"x");
p = a*x^2 + b*x + c;
x = roots(p);
x = real(x(1));
theta = acosd(x);
printf("The inclination of the rod with the horizontal = %.2f degrees",theta);    //Answer in textbook is wrong
