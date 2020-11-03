//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l1 = 150;    //(mm)
b1 = 50;     //(mm)
l2 = 50;    //(mm)
b2 = 150;     //(mm)

//Splitting up the whole section into two rectangles 1 and 2:
//(i) Rectangle(1):
a1 = l1*b1;              //(mm^2)
y1 = l1 + b1/2;          //(mm)

//(ii) Rectangle(2):
a2 = l2*b2;              //(mm^2)
y2 = b2/2;               //(mm)

//The distance between centre of gravity of the section and bottom of the web:
y_bar = (a1*y1 + a2*y2)/(a1 + a2);         //(mm)

//Moment of inertia about X-X axis:
Ig1 = l1*(b1)^3 / 12;                //(mm^4)

//Distance between centre of gravity of rectangle(1) and X-X axis:
h1 = y1 - y_bar;                       //(mm)

//Moment of inertia of rectangle(1) about X-X axis:
Ix1 = Ig1 + (a1*(h1)^2);         //(mm^4)

//Moment of inertia of rectangle(2) about an axis through its centre of gravity and parallel to X-X axis:
Ig2 = h1*(b2)^3 / 12;           //(mm^4)

//Distance between centre of gravity of rectangle(2) and X-X axis:
h2 = y_bar - y2;                  //(mm)

//Moment of inertia of rectangle(2) about X-X axis:
Ix2 = Ig2 + (a2*(h1)^2);      //(mm^4)

//Moment of Inertia of the whole section about X-X axis:
Ixx = Ix1 + Ix2;               //(mm^4)

//Moment of inertia about Y-Y axis:
//M.I. of rectangle(1) about Y-Y axis:
Iy1 = h1*(l1)^3 / 12;         //(mm^4)

//M.I. of rectangle(2) about Y-Y axis:
Iy2 = l1*(h1)^3 / 12;        //(mm^4)

//Moment of Inertia of the whole section about Y-Y axis:
Iyy = Iy1 + Iy2;              //(mm^4)

printf("Moment of Inertia of the whole section about X-X axis = %.2f mm^4\n",Ixx);
printf("Moment of Inertia of the whole section about Y-Y axis = %.2f mm^4",Iyy);
