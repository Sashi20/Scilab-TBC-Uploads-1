//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
h = 30;     //(mm)
H = 120;    //(mm)
//(i) Cylinder:
//v1 = %pi * r^2 * 30;      (mm^3)
y1 = h/2;                //(mm)

//(ii) Right circular cone:
//v2 = (%pi/3) * r^2 * h;      //(mm^3)
y2 = h + H/4;               //(mm)

//Distance between centre of gravity of the section and base of the cylinder:
//v1 = 30*%pi*r^2
//v2 = 40*%pi*r^2
V1 = 30*%pi;
V2 = 40*%pi;
//y_bar = (v1*y1 + v2*y2)/(v1 + v2);
y_bar = ((V1*y1) + (V2*y2))/(V1 + V2);    //(mm)
printf("Distance between centre of gravity of the section and base of the cylinder = %.2f mm",y_bar);
