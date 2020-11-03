//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
b = 30;           //(mm)(Width of the section)
d = 40;           //(mm)(Depth of the section)

//Moment of inertia of the section about an axis passing through its centre of gravity and parallel to X-axis

Ixx = (b*d^3)/12;        //(mm^4)

//Moment of inertia of the section about an axis passing through its centre of gravity and parallel to Y-axis
Iyy = (d*b^3)/12;        //(mm^4)

printf("Moment of Inertia about X-X axis = %.2f mm^4\n",Ixx);
printf("Moment of Inertia about Y-Y axis = %.2f mm^4",Iyy);
