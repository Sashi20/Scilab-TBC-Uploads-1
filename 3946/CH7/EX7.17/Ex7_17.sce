//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 200;       //(mm)(Total length)
b = 15;        //(mm)(Breadth)
h = 200;       //(mm)(Height)
x = 60;        //(mm)(Length of upper part)
MI_ISJB = 7.807 * 10^6;    //(Moment of inertia of ISJB section about X - X axis)
//Moment of inertia of one plate section about an ais passing through its centre of gravity and parallel to X-X axis:
Ig = l*(b)^3 / 12;              //(mm^4)

//Distance between the centre of gravity of the plate section and X-X axis:
h1 = h/2 + b/2;                    //(mm)

//Moment of inertia of the plate section about X-X axis:
a = l*b;
I = Ig + (a*(h1)^2);      //(mm^4)

//Moment of inertia of the compound about X-X axis:
Ixx = 2*(MI_ISJB) + 2*(I);     //(mm^4)

printf("Moment of inertia of the compound about X-X axis = %.2f mm^4",Ixx);
