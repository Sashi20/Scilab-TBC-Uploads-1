//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Let y be the distance between centre of gravity of the section from the bottom face:
//(i)Rectangle:
h1 = 300;                //(mm)(Height)
l1 = 200;                //(mm)(Length)
a1 = h1 * l1;            //(mm^2)
y1 = h1/2;              //(mm)

//(ii)Circular hole:
d = 150;                  //(mm)(Diameter)
x = 100;                  //(mm)(Distance from top to centre of circle)
a2 = %pi/4 * (d)^2;     //(mm^2)
y2 = h1 - x;           //(mm)

//Distance between the centre of gravity of the section and its bottom face:
y = (a1*y1 - a2*y2)/(a1 - a2);         //(mm)

//Moment of inertia of rectangular section about an axis through its centre of gravity and parallel to X-X axis:
Ig1 = l1*(h1)^3 / 12;                 //(mm^4)

//Distance of centre of gravity of rectangular section and X-X axis:
hh1 = (h1/2) - y;                      //(mm)

//Moment of inertia of rectangle about X-X axis:
I = Ig1 + (h1*l1)*(hh1)^2;          //(mm^2)

//Moment of inertia of circular section about an axis through its centre of gravity and parallel to X-X axis:
Ig2 = %pi/64 *(d)^4;               //(mm^4)

//Distance between centre of gravity of the circular section and X-X axis:
hh2 = (h1 - x) - y;                    //(mm)

//Moment of inertia of the circular section about X-X axis:
II = Ig2 + (a2 * (hh2)^2);       //(mm^4)

//Moment of Inertia of the whole section about X-X axis:
MI = I - II;                         //(mm^2)
printf("Moment of Inertia of the whole section about X-X axis = %.2f mm^4",MI);    //The answers vary due to round off error
