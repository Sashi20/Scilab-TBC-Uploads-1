//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Let y be the distance between the centre of gravity of the section and the base BC.
//(i)Triangular section:
b1 = 100;                      //(mm)(Base)
d1 = 90;                        //(mm)(Height)
a1 = (b1*d1) / 2;               //(mm^2)
y1 = d1/3;                     //(mm)

//(ii)Rectangular hole:
b2 = 20;                       //(mm)(Breadth)
d2 = 30;                       //(mm)(Height)
a2 = b2*d2;                   //(mm^2)
y2 = d2 + d2/2;               //(mm)

//Distance between the centre of gravity of the section and base BC of the triangle:
y = (a1*y1 - a2*y2)/(a1 - a2);       //(mm)

//Moment of inertia of the section about X-X axis:

//Moment of inertia of the triangular section through its centre of gravity and parallel to X-X axis:
b = b1;
d = d1;
Ig1 = b*(d)^3 / 36;               //(mm^4)

//Distance between the centre of gravity of the section and X-X axis:
hh1 = 30 - y;                      //(mm)

//Moment of inertia of the triangular section about X-X axis:
I = Ig1 + (a1*(hh1)^2);          //(mm^4)

//Moment of inertia of the rectangular hole through its centre of gravity and parallel to the X-X axis:
b = b2;
d = d2;
Ig2 = b*d^3 / 12;               //(mm^4)

//Distance between the centre of gravity of the section and X-X axis:
hh2 = 45 - y;                    //(mm)

//Moment of inertia of rectangular section about X-X axis:
II = Ig2 + (a2*(hh2)^2);          //(mm^4)

//Moment of inertia of the whole section about X-X axis:
Ixx = I - II;                       //(mm^4)

//Moment of inertia of the section about the base BC:

//Moment of inertia of the triangular section about the base BC:
Ig1 = b1*(d1)^3 / 12;             //(mm^4)

//Moment of inertia of the rectangular hole through its centre of gravity and parallel to X-X axis:
Ig2 = b2*d2^3 / 12;                //(mm^4)

//Distance between the centre of gravity of the section about the base BC:
h2 = d2 + d2/2;                    //(mm)

//Moment of inertia of rectangular section about the base BC:
i = Ig2 + (a2*(h2)^2);            //(mm^4)

//Moment of Inertia of the whole section about the base BC:
Ibc = Ig1 - i;                     //(mm^4)

printf("Moment of inertia of the whole section about X-X axis = %.2f mm^4\n",Ixx);
printf("Moment of Inertia of the whole section about the base BC = %.2f mm^4",Ibc);
