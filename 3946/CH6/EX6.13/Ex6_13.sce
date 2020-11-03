//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//(i) Trapezium ABCD:
DC = 200;        //(mm)
AB = 300;        //(mm)
h = 120;         //(mm)(height)
a1 = h * ((DC + AB)/2);          //(mm^2)
y1 = h/3 * ((AB + 2*DC)/(AB + DC));    //(mm)

//(ii) Semicircle:
r = 90;          //(mm)(Radius)
a2 = 1/2 * %pi * r^2;      //(mm^2)
y2 = (4*r) / (3*%pi);      //(mm)

//The distance between centre of gravity of the section and AB:
y_bar = ((a1 * y1) - (a2 * y2))/(a1 - a2);     //(mm)
printf("The distance between centre of gravity of the section and AB = %.2f mm",y_bar);
