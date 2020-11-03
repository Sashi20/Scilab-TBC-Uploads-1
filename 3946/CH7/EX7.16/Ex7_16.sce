//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 160;              //(mm)(Length)
b = 12;               //(mm)(Breadth of rod)
h = 300;              //(mm)(Height of the stand)
MI_ISLB = 73.329;         //(mm^4)(Moment of inertia of ISLB 300 section about X - X axis)
//Moment of inertia of one steel plate section about an axis passing through its centre of gravity and parallel to X-X axis:
Ig = l*((b)^3)/12;           //(mm^4)

//Distance between the centre of gravity of the plate section and X-X axis:
h = (h/2) + b/2;                 //(mm)

//Moment of inertia of one plate section about X-X axis:
a = l*b;
I = Ig + (a)*(h^2);       //(mm^2)

//Moment of inertia of the compound beam section about X-X axis:
Ixx = (MI_ISLB * 10^6) + 2*(I);     //(mm^4)

printf("Moment of inertia of the compound beam section about X-X axis = %.2f mm^4",Ixx);    //The answers vary due to round off error
