//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//As the section is symmetrical about Y-Y axis, bisecting the web, therefore its centre of gravity will lie on this axis. Now split up the section into three rectangles as shown in Fig. 6.12.
//Let the bottom of the bottom flange be the axis of reference:
//(i) Bottom flange:
l1 = 300;                    //(mm)
h1 = 100;                    //(mm)
a1 = l1 * h1;                //(mm^2)
y1 = h1/2;                   //(mm)

//(ii) Web:
l2 = 50;                  //(mm)
h2 = 300;                 //(mm)
a2 = l2 * h2;             //(mm^2)
y2 = h1 + h2/2;           //(mm)

//(iii) Top flange:
l3 = 150;               //(mm)
h3 = 50;                //(mm)
a3 = l3 * h3;           //(mm^2)
y3 = h1 + h2 + h3/2;   //(mm)

//The distance between centre of gravity of the section and bottom of the flange:
y_bar = ((a1 * y1) + (a2 * y2) + (a3 * y3))/(a1 + a2 + a3);         //(mm)
printf("The distance between centre of gravity of the section and bottom of the flange = %.2f mm",y_bar);
