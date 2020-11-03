//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Moment of inertia of the section about horizontal axis passing through the centroid of the section:

//Moment of inertia of the rectangular section about its horizontal axis passing through its centre of gravity:
b = 120;                              //(mm)(Breadth)
d = 150;                              //(mm)(Depth)
Ix1 = b*(d)^3 / 12;               //(mm^4)

//Moment of inertia of the circular section about a horizontal axis passing through its centre of gravity:
r = 50;                               //(mm)(Radius)
Ix2 = %pi/4 * (r)^4;                 //(mm^4)

//Moment of inertia of the whole section about horizontal axis passing through the centroid of the section:
Ixx = Ix1 - Ix2;                      //(mm^4)
printf("Moment of inertia of the whole section about horizontal axis passing through the centroid of the section = %.2f mm^4\n",Ixx);

//Moment of inertia of the section about vertical axis passing through its centre of gravity:
Ig1 = d*(b)^3 / 12;             //(mm^4)

//Area of one semicircular section with 50 mm radius:
a = %pi*(r)^2 / 2;                //(mm^2)

//Moment of inertia of a semicircular section about a vertical axis passing through its centre of gravity:
Ig2 = 0.11*(r)^4;                //(mm^4)

//Distance between centre of gravity of the semicircular section and its base:
h = (4*r) / (3*%pi);                 //(mm)

//Distance between centre of gravity of the semicircular section and centre of gravity of the whole section:
h2 = 60 - h;                  //(mm)
I = Ig2 + (a*(h2)^2);        //(mm^4)

//Moment of inertia of both the semicircular sections about centre of gravity of the whole section:
II = 2*I;                         //(mm^4)

//Moment of Inertia of the whole section about a vertical axis passing through the centroid of the section:
MI = Ig1 - II;                   //(mm^4)
printf("Moment of Inertia of the whole section about a vertical axis passing through the centroid of the section = %.2f mm^4",MI);    //(The answers vary due to round off error)

