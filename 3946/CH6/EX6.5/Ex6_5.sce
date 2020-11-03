//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//As the section is not symmetrical about any axis, therefore we have to find out the values of both x and y for the lamina:
//Let left edge of circular portion and bottom face rectangular portion be the axes of reference:
//(i) Rectangular portion:
l1 = 100;            //(mm)
h1 = 50;             //(mm)
a1 = l1 * h1;       //(mm^2)
x1 = 25 + l1/2;     //(mm)
y1 = h1/2;           //(mm)

//(ii) Semicircular portion:
r = 25;              //(mm)
a2 = (%pi/2) * (r^2);      //(mm^2)
x2 = 25 - (4 * r)/(3 * %pi);       //(mm)
y2 = 50/2;                  //(mm)

//(iii) Triangular portion:
a3 = (l1/2 * l1/2)/2;           //(mm^2)
x3 = r + l1/2 + l1/4;          //(mm)
y3 = l1/2 + (l1/2)/3;             //(mm)

//The distance between centre of gravity of the section and left edge of the circular portion:
x_bar = ((a1 * x1) + (a2 * x2) + (a3 * x3))/(a1 + a2 + a3);
printf("The distance between centre of gravity of the section and left edge of the circular portion = %.2f mm\n",x_bar);     //The answers vary due to round off error

//Distance between centre of gravity of the section and bottom face of the rectangular portion:
y_bar = ((a1 * y1) + (a2 * y2) + (a3 * y3))/(a1 + a2 +a3);         //(mm)
printf("Distance between centre of gravity of the section and bottom face of the rectangular portion = %.2f mm",y_bar);    //The answers vary due to round off error
