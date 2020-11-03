//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//As the section is symmetricsl about Y-Y axis, bisecting the web, therefore its centre of gravity will lie on this axis. Split up the section into two rectangles ABCH and DEFG as shown in Fig. 6.10.
//Let bottom of the web FE be the axis of reference:
//(i) Rectangle ABCH:
AB = 100;              //(mm)
BC = 30;               //(mm)
AF = 150;              //(mm)
a1 = AB * BC;          //(mm^2)
y1 = (AF - BC/2);      //(mm)

//(ii) Rectangle DEFG:
DE = AF - BC;          //(mm)
FE = 30;               //(mm)
a2 = DE * FE;         //(mm^2)
y2 = DE/2;            //(mm)

//Distance between centre of gravity of the section and bottom of the flange FE:
y_bar = ((a1 * y1) + (a2 * y2))/(a1 + a2);     //(mm)
printf("Distance between centre of gravity of the section and bottom of the flange FE = %.2f mm",y_bar);      //The answers vary due to round off error
