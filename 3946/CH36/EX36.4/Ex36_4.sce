//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
sw = 0.8;   //(Specific gravity of wood)
l = 1.2;    //(m)(Length of the wooden block)
b = 0.4;    //(m)(Breadth of the block)
d = 0.3;    //(m)(Height or depth of the block)

//Depth of immersion of the block:
di = sw * d;    //(m)

//Distance of centre of buoyancy, from the bottom of the block:
OB = di/2;      //(m)

//Distance of c.g. from the bottom of the block:
OG = d/2;       //(m)
BG = OG - OB;   //(m)              -(i)

//Moment of inertia of rectangular section about the central axis and parallel to the long side:
I = (l * b^3)/12;     //(m^4)

//Volume of water displaced:
l = 1.2;                  //(m)(Length)
b = 0.4;                  //(m)(Breadth)
h = 0.3;                  //(m)(Height)
V = l * b * di;     //(m^3)

BM = I/V;                 //(m)

//Metacentric height:
GM = (BM - BG)*1000;      //(mm)
printf("Metacentric height = %.2f mm",GM);    //The answers vary due to round off error
