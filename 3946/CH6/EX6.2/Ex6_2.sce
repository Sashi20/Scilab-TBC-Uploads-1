//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//As the section is symmetrical about X-X axis, therefore its centre of gravity will lie on this axis. Now split up the whole section into three rectangles ABFJ, EGKJ and CDHK as shown in Fig. 6.11.
//Let the face AC be the axis of reference :
//(i) Rectangle ABFJ:
AB = 50;             //(mm)
AJ = 15;             //(mm)
a1 = AB * AJ;        //(mm^2)
x1 = AB/2;           //(mm)

//Rectangle EGKJ:
AC = 100;            //(mm)
HD = 15;             //(mm)
KG = 15;             //(mm)
a2 = (AC - (HD + AJ)) * KG;      //(mm^2)
x2 = KG/2;                 //(mm)

//Rectangle CDHK:
CD = 50;             //(mm)
a3 = CD * KG;              //(mm^2)
x3 = CD/2;                 //(mm)

//Distance between the centre of gravity of the section and left face of the section AC:
x_bar = ((a1 * x1) + (a2 * x2) + (a3 * x3))/(a1 + a2 + a3);         //(mm)
printf("Distance between the centre of gravity of the section and left face of the section AC = %.2f mm",x_bar);     //The answers vary due to round off error
