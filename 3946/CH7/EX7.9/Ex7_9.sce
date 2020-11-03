//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
ED = 120;           //(mm)
FE = 40;            //(mm)
KA = 100;           //(mm)
CB = 40;            //(mm)
AB = 240;           //(mm)
//Splitting the area into two rectangles 1 and 2 as shown in Fig.7.13.
//Moment of inertia of section(1) about its centre of gravity and parallel to axis K-K:
Ig1 = (ED*(FE)^3)/12;          //(mm^4)

//distance between centre of gravity of section (1) and axis K-K:
h1 = KA + FE/2;                //(mm)

//Moment of inertia of section(1) about axis K-K:
I1 = Ig1 + (ED*FE)*(ED)^2;    //(mm^2)

//Moment of inertia of section(2) about its centre of gravity and parallel to axis K-K:
Ig2 = CB*(AB)^3 / 12;           //(mm^4)

//distance between centre of gravity of section(2) and axis K-K:
h2 = KA + AB/2;               //(mm)

//Moment of inertia of section(2) about the axis K-K:
I2 = Ig2 + (AB*CB)*(h2)^2;    //(mm^4)

//Moment of inertia of the whole area about the axis K-K:
IKK = I1 + I2;                  //(mm^4)

printf("Moment of inertia of the whole area about the axis K-K = %.2f mm^4",IKK);
