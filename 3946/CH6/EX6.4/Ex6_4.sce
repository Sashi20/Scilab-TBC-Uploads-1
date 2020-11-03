//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//As the section is not symmetrical about any axis, therefore we have to find out the values of x and y for the angle section. Split up the section into two rectangles as shown in Fig. 6.13.
//Let the face of the vertical section and bottom face of the horizontal section be axes of reference:
//(i) Rectangle 1:
h1 = 100;              //(mm)
l1 = 20;               //(mm)
a1 = h1 * l1;         //(mm^2)
x1 = l1/2;             //(mm)
y1 = h1/2;            //(mm)

//Rectangle 2:
l2 = 80;              //(mm)
h2 = 20;              //(mm)
a2 = (l2 - l1) * h2;     //(mm^2)
x2 = h2 + (l2 - l1)/2;          //(mm)
y2 = h2/2;               //(mm)

//The distance between centre of gravity of the section and left face:
x_bar = ((a1 * x1) + (a2 * x2))/(a1 + a2);    //(mm)
printf("The distance between centre of gravity of the section and left face = %.2f mm\n",x_bar);

//Distance between centre of gravity of the section and bottom face:
y_bar = ((a1 * y1) + (a2 * y2))/(a1 + a2);    //(mm)
printf("Distance between centre of gravity of the section and bottom face = %.2f mm",y_bar);
