//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 3;    //(m)(Diameter of cylinder)
h = 3;    //(m)(Height of cylinder)
s = 0.8;  //(Specific gravity)

//Depth of immersion of the cylinder:
di = s * d;       //(m)

//Distance of centre of buoyancy, from the bottom of the cylinder:
OB = di/2;         //(m)

//Distance of c.g. from the bottom of the cylinder:
OG = h/2;          //(m)

BG = OG - OB;      //(m)

//Moment of inertia of the circular section:
I = (%pi/64)*(d^4);    //(m^4)

//Volume of water displaced:
V = (%pi/4)*(d^2) * di;     //(m^3)

BM = I/V;        //(m)

//Metacentric height:
GM = BM - BG;    //(m)
printf("Metacentric height = %.2f m\n",GM);    //(Answer rounded off in console)
printf("The cylinder is in an unstable equilibrium.");
