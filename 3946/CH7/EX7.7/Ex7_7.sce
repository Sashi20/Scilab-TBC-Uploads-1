//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 100;         //(mm)(Diameter of the section)
r = 50;          //(mm)(Radius)

//Moment of Inertia of the section about its centre of gravity and parallel to X-X  axis:
Ixx = 0.11 * r^4;      //(mm^4)

//Moment of Inertia of the section about its centre of gravity and parallel to Y-Y axis:
Iyy = 0.393 * r^4;     //(mm^4)

printf("Moment of Inertia of the section about its centre of gravity and parallel to X-X  axis = %.2f mm^4\n",Ixx);
printf("Moment of Inertia of the section about its centre of gravity and parallel to Y-Y axis = %.2f mm^4",Iyy);    //(The answers vary due to round off error)
