//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 90;             //(mm)(Length)
b1 = 10;            //(mm)(Breadth)
b2 = 10;            //(mm)(Breadth)
d = 20;             //(mm)(Distance between the two structures)
b3 = 10;            //(mm)(Breadth of the rod)
h = 130;            //(mm)(Height of the structure)
//Moment of inertia of one top or bottom plate about an axis through its centre and parallel to X-X axis:
Ig1 = l*(b1)^3 / 12;            //(mm^4)

//Distance between centre of gravity of the plates from X-X axis:
h1 = 65 - 5;                     //(mm)

//Moment of inertia of top and bottom plates about X-X axis:
a1 = l*b2;
I = 2*(Ig1 + (a1)*(h1)^2);        //(mm^2)

//Moment of inertia of part(1) of one channel section about an axis through its centre of gravity and parallel to X-X axis:
y = 90 - 20 - 20 - 10 - 10;          //(mm)(Length of top of the structure)

Ig2 = (y)*(b2)^3 / 12;                //(mm^4)

//Distance of centre of gravity of this part from X-X axis:
h2 = 55 - 5;                         //(mm)

//Moment of Inertia of part(1) about X-X axis:
a2 = y*b2;
II = 4*(Ig2 + (a2)*(h2)^2);       //(mm^4)

//Moment of inertia of part(2) of the channel about an axis through its centre of gravity and parallel to X-X axis:
Ig3 = 2*(b1*(l)^3/12);            //(mm^4)

//Moment of Inertia of the whole built-up section about an axis through its centre of gravity parallel to X-X axis:
Ixx = I + II + Ig3;                  //(mm^4)

printf("Moment of Inertia of the whole built-up section about an axis through its centre of gravity parallel to X-X axis = %.2f mm^4",Ixx);       //The answer provided in the textbook is wrong
