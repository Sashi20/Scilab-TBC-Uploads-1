//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 100;    //(cm)(Length of the cylinder)
d1 = 20;     //(cm)(Diameter of the cylinder)
b = 2.5;    //(cm)(Thickness of base)
sb = 8;     //(Specific gravity of base)
sr = 0.5;   //(Specific gravity of remaining portion)
d = l - b;  //(cm)(Depth of water)

//Floating of the cylinder:
//Cross-section area of the cylinder:
A = (%pi/4)*(d^2);    //(cm^2)

//Distance between the combined centre of gravity (G) and bottom of the cylinder (O):
OG = [[sr*A * d*(b + d/2)] + [sb*A * b * b/2]]/[(sr*A * d) + (sb*A * b)];    //(cm)

//Combined specific gravity of the cylinder:
CSG = [(d * sr) + (b * sb)]/(d + b);

//Depth of immersion of the cylinder:
DI = l * CSG;    //(cm)

//Distance of centre of buoyancy from the bottom of the buoy:
OB = DI/2;     //(cm)
BG = OG - OB;    //(cm)

//Moment of inertia of the circular section:
I = (%pi/64)*(d1^4);    //(cm)

//Volume of water displaced:
V = (%pi/4)*(d1^2)*DI;    //(cm^3)
BM = I/V;                   //(cm)

//Metacentric height:
GM = BM - BG;               //(cm)
printf("Metacentric height = %.2f cm\n",GM);
printf("The cylinder is in unstable equilibrium.\n");     //The answers vary due to round off error

//Maximum permissible length of the cylinder:

//Let l = Length of cylinder excluding metal portion in cm.

//Distance between the combined centre of gravity (G) and the bottom of the cylinder (O):
//OG = (l^2 + 5*l + 100)/(2*l + 80)

//Combined specific gravity of cylinder:
//CSG = (0.5*l + 20)/(l + 2.5)

//Depth of immersion of the cylinder:
//DI = (0.5*l + 20)         (cm)

//Distance of centre of buoyancy from the bottom of the buoy:
//OB = 0.25*l + 10          (cm)

//Volume of water displaced:
//V = 100*%pi*(0.5*l + 20)
//BM = (50)/(l + 40)
//OM = OB + BM;

//For stable equilibrium, the metacentre (M) should be above centre of gravity (G) or may coincide with G:
//i.e.,      OM <= OG

//Solving:
//l^2 - 70*l - 1600 <= 0
l = (70 + sqrt(70^2 + 4*1600))/2;    //(cm)

//Maximum permissible length of the cylinder including the metal portion:
L = l + 2.5;    //(cm)
printf("Maximum permissible length of the cylinder = %.2f cm",L);
