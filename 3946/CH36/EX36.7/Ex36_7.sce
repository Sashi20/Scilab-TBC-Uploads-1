//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 500;    //(mm)(Length of cylinder)
d = 100;    //(mm)(Diameter of the cylinder)
t = 10;     //(mm)(Base thickness)
sb = 7;     //(Specific gravity of base)
sr = 0.5;   //(Specific gravity of remaining portion)
h = l - t;  //(mm)(Height of water)

A = 2*%pi*(d/2)^2;    //(m^2)
//Distance between the combined centre of gravity and the bottom of cylinder (O):
OG = [[sr*A * h * (t + h/2)] + [sb*A * t * t/2]]/[(sr*A * h) + (sb*A * t)];

//Combined specific gravity:
CSG = [(sr * h) + (sb * t)]/(h + t);

//Depth of immersion of the cylinder:
di = CSG * l;    //(mm)

//Distance of centre of buoyancy from the bottom of the cylinder:
OB = di/2;       //(mm)
BG = OG - OB;     //(mm)

//Moment of inertia of the circular section about its centre of gravity:
I = (%pi/64)*(d^4);     //(mm^4)

//Volume of water displaced:
V = (%pi/4)*(d^2)*di;     //(m^3)
BM = I/V;               //(mm)

//Metacentric height:
GM = BM - BG;    //(mm)
printf("Metacentric height = %.2f mm\n",GM);
printf("The cylinder is in an unstable equilibrium.");
