//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//(i) Rectangle:
l = 40 + 40;        //(mm)
b = 30;             //(mm)
a1 = l * b;       //(mm^2)
x1 = l/2;          //(mm)
y1 = b/2;          //(mm)
r = l/4;           //(mm)

//(ii) Triangle:
a2 = l*(60 - b) / 2;     //(mm^2)
x2 = l*2 / 3;      //(mm)
y2 = b + b/3;     //(mm)

//(iii) Semicircle:
a3 = %pi/2 * (r)^2;      //(mm^2)
x3 = l/2 + r;         //(mm)
y3 = (4*(r))/(3*%pi);    //(mm)

//The distance between centre of gravity of the area and left face of trapezium:
x_bar = (a1*x1 + a2*x2 - a3*x3)/(a1 + a2 - a3);   //(mm)
printf("The distance between centre of gravity of the area and left face of trapezium = %.2f mm\n",x_bar);

//The distance between centre of gravity of the area and base of the trapezium:
y_bar = (a1*y1 + a2*y2 - a3*y3)/(a1 + a2 - a3);    //(mm)
printf("The distance between centre of gravity of the area and base of the trapezium = %.2f mm",y_bar);    //The answers vary due to round off error

