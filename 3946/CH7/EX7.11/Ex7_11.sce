//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Splitting up the whole section into three rectangles 1, 2 and 3 as shown in Fig. 7.15.
//(i)Rectangle(1):
l1 = 60;                     //(mm)
h1 = 20;                     //(mm)
h2 = 100;                    //(mm)
a1 = l1*h1;                  //(mm^2)
y1 = h1 + h2 + h1/2;         //(mm)

//(ii)Rectangle(2):
l2 = 20;                     //(mm)
a2 = h2 * l2;                 //(mm^2)
y2 = l2 + h2/2;             //(mm)

//(iii)Rectangle(3):
l3 = 100;                    //(mm)
h3 = 20;                     //(mm)
a3 = l3 * h3;                 //(mm^2)
y3 = h3/2;                   //(mm)

//Distance between centre of gravity of the section and bottom face:
y_bar = (a1*y1 + a2*y2 + a3*y3)/(a1 + a2 + a3);         //(mm)

//Moment of inertia of rectangle(1) about an axis through its centre of gravity and parallel to X-X axis:
Ig1 = l1*(h1)^3 / 12;             //(mm^4)

//Distance between centre of gravity of rectangle(1) and X-X axis:
hh1 = 130 - y_bar;                  //(mm)

//Moment of Inertia of rectangle(1) about X-X axis:
Ix1 = Ig1 + (a1*(hh1)^2);      //(mm^4)

//Moment of inertia of rectangle(2) about an axis through its centre of gravity and parallel to X-X axis:
Ig2 = l2*(h2)^3 / 12;             //(mm^4)

//Distance between centre of gravity of rectangle(2) and Y-Y axis:
hh2 = 70 - y_bar;                   //(mm)

//Moment of inertia of rectangle(2) about X-X axis:
Ix2 = Ig2 + (a2*(hh2)^2);       //(mm^4)

//Moment of inertia of rectangle(3) about an axis through its centre of gravity and parallel to X-X axis:
Ig3 = l3*(h3)^3 / 12;              //(mm^4)

//Distance between centre of gravity of rectangle(3) and X-X axis:
hh3 = y_bar - y3;                     //(mm)

//Moment of inertia of rectangle(3) about X-X axis:
Ix3 = Ig3 + (a3*(hh3)^2);        //(mm^4)

//Moment of Inertia of the whole section about X-X axis:
Ixx = Ix1 + Ix2 + Ix3;              //(mm^4)
printf("Moment of Inertia of the whole section about X-X axis = %.2f mm^4",Ixx);    //(The answers vary due to round off error)
