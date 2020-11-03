//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 10;    //(kg)(Mass of body A)
r1 = 250;   //(mm)(Radius of rotating body)
m2 = 4;     //(kg)(Mass of body B)

//Let r2 = Radius at which c.g. of mass B should be placed.

//m1*r1 = m2*r2;
r2 = (m1 * r1)/m2;     //(mm)
printf("Radius at which c.g. of mass B should be placed = %.2f mm",r2);
