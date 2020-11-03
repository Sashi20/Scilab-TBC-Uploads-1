//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//(i) Hemisphere ADE:
r = 60;                     //(mm)(Radius)
v1 = 2*%pi / 3 * r^3;       //(mm^3)
x1 = 5*r / 8;               //(mm)

//(ii) Right circular cylinder ABCD:
h = 150;                     //(mm)(Height)
v2 = %pi * r^2 * h;       //(mm^3)
x2 = r + h/2;             //(mm)

//(iii) Cone BCF:
v3 = %pi/3 * r^2 * h;      //(mm^3)
x3 = r + h*3/4;            //(mm)

//The distance between centre of gravity of the solid and left edge of the hemisphere(E):
x_bar = (v1*x1 + v2*x2 - v3*x3)/(v1 + v2 - v3);      //(mm)
printf("The distance between centre of gravity of the solid and left edge of the hemisphere(E) = %.2f mm",x_bar);
