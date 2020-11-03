//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Splitting up the section into two rectangles 1 and 2 as shown in Fig.7.16.

//Moment of Inertia about centroidal X-X axis:

//Rectangle(1):
l1 = 20;               //(mm)
h1 = 100;              //(mm)
a1 = h1 * l1;           //(mm^2)
y1 = h1/2;            //(mm)

//Rectangle(2):
l2 = 80;              //(mm)
h2 = 20;              //(mm)
a2 = (l2 - l1)*h2;    //(mm)
y2 = h2/2;            //(mm)

//The distance between the centre of gravity of the section and bottom face:
y_bar = (a1*y1 + a2*y2)/(a1 + a2);      //(mm)

//Moment of inertia of rectangle(1) about an axis through its centre of gravity and parallel to X-X axisL
Ig1 = l1*(h1)^3 / 12;             //(mm^4)

//Distance of centre of gravity of rectangle(1) from X-X axis:
hh1 = y1 - y_bar;                      //(mm)

//Moment of inertia of rectangle(1) about X-X axis:
Ix1 = Ig1 + (a1*(hh1)^2);         //(mm^4)

//Moment of inertia of rectangle(2) about an axis through its centre of gravity and parallel to X-X axis:
Ig2 = (l2 - l1)*(h2)^3 / 12;              //(mm^4)

//Distance of centre of gravity of rectangle(2) from X-X axis:
hh2 = y_bar - y2;                     //(mm)

//Moment of inertia of rectangle(2) about X-X axis:
Ix2 = Ig2 + (a2*(hh2)^2);        //(mm^4)

//Moment of Inertia of whole section about X-X axis:
Ixx = Ix1 + Ix2;                  //(mm^4)
printf("Moment of Inertia of whole section about X-X axis = %.2f mm^4\n",Ixx);      //(Answer rounded off in book)

//Moment of Inertia about centroidal Y-Y axis:

//Rectangle(1):
x1 = y1;                //(mm)

//Rectangle(2):
x2 = y2;          //(mm)

//Distance between the centre of gravity of the section and left face:
x_bar = (a1*x1 + a2*x2)/(a1 + a2);          //(mm)

//Moment of inertia of rectangle(1) about an axis through its centre of gravity and parallel to Y-Y axis:
Ig1 = h1*(l1)^3 / 12;                 //(mm^4)

//Distance of centre of gravity of rectangle(1) from Y-Y axis:
hh1 = x_bar - x1;                         //(mm)

//Moment of Inertia of rectangle(1) about Y-Y axis:
Iy1 = Ig1 + (a1*(hh1^2));            //(mm^4)

//Moment of inertia of rectangle(2) about an axis through its centre of gravity and parallel to Y-Y axis:
Ig2 = h2*(l2 - l1)^3 / 12;                //(mm^4)

//Distance of centre of gravity of rectangle(2) from Y-Y axis:
hh2 = x_bar - x2;                        //(mm)

//Moment of Inertia of rectangle(2) about Y-Y axis:
Iy2 = Ig2 + (a2*(hh2)^2);         //(mm^4)

//Moment of Inertia of the whole section about Y-Y axis:
Iyy = Iy1 + Iy2;                  //(mm^4)

printf("Moment of Inertia of the whole section about Y-Y axis = %.2f mm^4",Iyy);      //The answers vary due to round off error
